import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_sync/data/model/employee_model.dart';
import 'package:sqflite_sync/data/model/prime_db_model.dart';
import 'package:sqflite_sync/data/model/user_model.dart';
import 'package:sqflite_sync/data/provider/user_provider.dart';
import 'package:sqflite_sync/data/repository/user_repository.dart';
import 'package:sqflite_sync/features/employee/ui/employee_screen.dart';
import 'package:sqflite_sync/features/employee/ui/widgets/employee_widget.dart';
import 'package:sqflite_sync/services/db_helper.dart';
import 'package:flutter/services.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {

  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      //developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectionStatus = result;
    });

    //if((_connectionStatus.toString().contains("none"))) {
    if(result == ConnectivityResult.none) {
      return showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => AlertDialog(
            content: Text("Please check your internet"),
            actions: <Widget>[
              TextButton(
                child: Text('Go to Settings'),
                onPressed: () {
                  //SystemSettings.system();
                },
              ),
              TextButton(
                child: Text('Close me!'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          )
      );
    }

    if(result != ConnectivityResult.none) {

      DatabaseHelper.deleteAllEmployee();

      /*UserModel userModel = await UserRepository(UserProvider()).getUserList();
      print("first name : ${userModel.data.first.firstName}");
      print("length : ${userModel.data.length}");*/

      /// data show after some delay for that
      PrimeDbModel primeDbModel = await UserRepository(UserProvider()).getPrimeDb();
      print("Prime User name : ${primeDbModel.secUsers.first.userFullName}");
      print("Prime User length : ${primeDbModel.secUsers.length}");

      Future.delayed(Duration(seconds: 5), () {
        setState(() {
          print("Prime User delay name : ${primeDbModel.secUsers.first.userFullName}");
        });
      });
      ///

      DatabaseHelper.deleteAllEmployee();

      // single data entry
      /*final EmployeeModel model = EmployeeModel(name: name, designation: designation, id: employee?.id);
      final EmployeeModel model = EmployeeModel(name: userModel.data.first.firstName, designation: userModel.data.first.email,);

      await DatabaseHelper.addEmployee(model);*/

      /*for (var row in userModel.data) {
        final EmployeeModel model = EmployeeModel(name: row.firstName, designation: row.email,);
        await DatabaseHelper.addEmployee(model);
        print("last name : ${row.lastName}");
      }*/

      /*userModel.data.forEach((row) async {
          final EmployeeModel model = EmployeeModel(name: row.firstName, designation: row.email,);
          await DatabaseHelper.addEmployee(model);
          print("last name : ${row.lastName}");
        }
      );*/

      primeDbModel.secUsers.forEach((row) async {
        final EmployeeModel model = EmployeeModel(name: row.userFullName, designation: row.userMobile,);
        await DatabaseHelper.addEmployee(model);
        print("userNo : ${row.userNo}");
      }
      );

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: const Text('Joy Volanath'),
          title: const Text('InnoSpace Employee', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EmployeeScreen()));
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder<List<EmployeeModel>?>(
          future: DatabaseHelper.getAllEmployees(),
          builder: (context, AsyncSnapshot<List<EmployeeModel>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else if (snapshot.hasData) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => EmployeeWidget(
                    employee: snapshot.data![index],
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmployeeScreen(
                                employee: snapshot.data![index],
                              )));
                      setState(() {});
                    },
                    onLongPress: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                  'Are you sure you want to delete this note?'),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                          Colors.red)),
                                  onPressed: () async {
                                    await DatabaseHelper.deleteEmployee(
                                        snapshot.data![index]);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                  child: const Text('Yes'),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('No'),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                );
              }
            }
            return const Center(
              child: Text('No Data found yet'),
            );
          },
        )
    );
  }
}