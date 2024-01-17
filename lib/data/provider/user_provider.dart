import 'package:http/http.dart' as http;
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


}