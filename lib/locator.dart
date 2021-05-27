import 'package:flutter_app/user_model.dart';
import 'package:flutter_app/user_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => UserModel());
}