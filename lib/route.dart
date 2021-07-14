import 'package:O2help/screen/home/home_screen.dart';
import 'package:O2help/screen/login/login_screen.dart';
import 'package:O2help/screen/request/request_screen.dart';
import 'package:O2help/screen/save/save_screen.dart';
import 'package:O2help/screen/tomorrow_update/tomorrow_update.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  TomorrowUpdateScreen.routeName: (context) => TomorrowUpdateScreen(),
  SaveScreen.routeName: (context) => SaveScreen(),
  RequestScreen.routeName: (context) => RequestScreen(),
};
