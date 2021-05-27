import 'package:flutter_app/user.dart';

class UserService {
  Future<User> getUserByUserName(String userName) {
    return Future.delayed(Duration(seconds: 1), () => User(userName));
  }
}