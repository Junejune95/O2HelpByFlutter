import 'package:O2help/screen/home/home_screen.dart';
import 'package:O2help/screen/request/request_screen.dart';
import 'package:O2help/screen/save/save_screen.dart';
import 'package:O2help/screen/tomorrow_update/tomorrow_update.dart';
import 'package:flutter/material.dart';

enum Menu { Home, Oxygen, Flowmeter, Oximeter, Save, Request }

extension MenuExtension on Menu {
  String get getMenuLabel {
    switch (this) {
      case Menu.Home:
        return 'Home';
        break;
      case Menu.Oxygen:
        return 'Oxygen';
        break;
      case Menu.Flowmeter:
        return 'Flowmeter';
        break;
      case Menu.Oximeter:
        return 'Oximeter';
        break;
      case Menu.Save:
        return 'Save';
        break;
      case Menu.Request:
        return 'Request';
        break;
      default:
        return '';
    }
  }

  get getMenuRoute {
    switch (this) {
      case Menu.Home:
        return HomeScreen.routeName;
        break;
      case Menu.Oxygen:
        return TomorrowUpdateScreen.routeName;
        break;
      case Menu.Save:
        return SaveScreen.routeName;
        break;
      case Menu.Request:
        return RequestScreen.routeName;
        break;
      default:
        return TomorrowUpdateScreen.routeName;
    }
  }

  IconData get getMenuIcon {
    switch (this) {
      case Menu.Home:
        return Icons.home_outlined;
        break;
      case Menu.Oxygen:
        return Icons.update_outlined;
        break;
      case Menu.Save:
        return Icons.bookmark_outline;
        break;
      case Menu.Request:
        return Icons.message_outlined;
        break;
      default:
        return Icons.update_outlined;
    }
  }
}
