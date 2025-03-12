import 'package:flutter/material.dart';
import 'package:portofolio/core/injection/injector.dart';
import 'package:portofolio/core/utils/hive_helper.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.initHive();
  initGetIt();
  // Bloc.observer = NewzlyBlocObserver();
}
