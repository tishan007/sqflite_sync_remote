import 'package:sqflite_sync/data/model/prime_db_model.dart';
import 'package:sqflite_sync/data/model/user_model.dart';
import 'package:sqflite_sync/data/provider/user_provider.dart';

abstract class IUserRepository {
  Future<UserModel> getUserList();
}

class UserRepository {
  final UserProvider userProvider;
  UserRepository(this.userProvider);

  Future<UserModel> getUserList() {
    return userProvider.getUserList();
  }

  Future<PrimeDbModel> getPrimeDb() {
    return userProvider.getPrimeDBData();
  }


}