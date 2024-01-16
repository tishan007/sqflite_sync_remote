import 'package:flutter/material.dart';
import 'package:sqflite_sync/data/model/employee_model.dart';
import 'package:sqflite_sync/services/db_helper.dart';

class EmployeeScreen extends StatelessWidget {
  final EmployeeModel? employee;
  const EmployeeScreen({
    Key? key,
    this.employee
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: "tt");
    final designationController = TextEditingController(text: "dd");

    if(employee != null){
      nameController.text = employee!.name;
      designationController.text = employee!.designation;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text( employee == null
            ? 'Add employee'
            : 'Edit employee'
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextFormField(
                controller: nameController,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: 'Name',
                    labelText: 'employee Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.75,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ))),
              ),
            ),
            TextFormField(
              controller: designationController,
              decoration: const InputDecoration(
                  hintText: 'Type here the employee',
                  labelText: 'designation',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.75,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ))),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 5,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () async {
                      final name = nameController.value.text;
                      final designation = designationController.value.text;

                      /*if (name.isEmpty || designation.isEmpty) {
                        return;
                      }*/

                      final EmployeeModel model = EmployeeModel(name: name, designation: designation, id: employee?.id);
                      if(employee == null){
                        await DatabaseHelper.addEmployee(model);
                      }else{
                        await DatabaseHelper.updateEmployee(model);
                      }

                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.75,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )))),
                    child: Text( employee == null
                        ? 'Add' : 'Edit',
                      style: const TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}