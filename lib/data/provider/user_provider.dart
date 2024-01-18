import 'package:http/http.dart' as http;
import 'package:sqflite_sync/data/model/prime_db_model.dart';
import 'package:sqflite_sync/data/model/user_model.dart';
import 'dart:convert';

class UserProvider {

  Future<UserModel> getUserList() async {

    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users"),);

      print("=== user response ==== : ${response.body}");
      return UserModel.fromJson(json.decode(response.body));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<PrimeDbModel> getPrimeDBData() async {

    try {
      var response = await http.get(Uri.parse("http://192.168.51.223:7006/WS_DownloadApi/DownloadData_4_0?DEVICE_ID=mistso&IS_ALL=1"),);

      print("=== prime db response ==== : ${response.body}");
      return PrimeDbModel.fromJson(json.decode(response.body));
    } catch (e) {
      return Future.error(e.toString());
    }
  }


}