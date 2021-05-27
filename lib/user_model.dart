import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_app/user.dart';
import 'package:flutter_app/user_service.dart';

import 'locator.dart';

class UserModel extends ChangeNotifier {
  UserService _userService = locator<UserService>();
  User currentUser;

  Future<void> loadUserWithName(String userName) async {
    currentUser = await _userService.getUserByUserName(userName);
    notifyListeners();
  }

  Future<void> loadUserInterval() async {
    loadUserWithName("sender");
    print("First update from DB");
    int counter = 0;
    new Timer.periodic(
        Duration(seconds: 10),
        (Timer t) async => {
              counter++,
              print("Update from DB"),
              loadUserWithName("test" + counter.toString())
            });
  }
}
