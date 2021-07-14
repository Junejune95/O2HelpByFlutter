import 'package:O2help/screen/home/home_screen.dart';
import 'package:O2help/screen/request/request_screen.dart';
import 'package:O2help/screen/save/save_screen.dart';
import 'package:O2help/screen/tomorrow_update/tomorrow_update.dart';
import 'package:flutter/material.dart';

enum Menu { Home, TomorrowUpdate, Save, Request }

extension MenuExtension on Menu {
  String get getMenuLabel {
    switch (this) {
      case Menu.Home:
        return 'Home';
        break;
      case Menu.TomorrowUpdate:
        return 'Tomorrow Update';
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
      case Menu.TomorrowUpdate:
        return TomorrowUpdateScreen.routeName;
        break;
      case Menu.Save:
        return SaveScreen.routeName;
        break;
      case Menu.Request:
        return RequestScreen.routeName;
        break;
      default:
        return '';
    }
  }

  IconData  get getMenuIcon {
    switch (this) {
      case Menu.Home:
        return Icons.home_outlined;
        break;
      case Menu.TomorrowUpdate:
        return Icons.update_outlined;
        break;
      case Menu.Save:
        return Icons.bookmark_outline;
        break;
      case Menu.Request:
        return Icons.message_outlined;
        break;
      default:
        return null;
    }
  }
}
