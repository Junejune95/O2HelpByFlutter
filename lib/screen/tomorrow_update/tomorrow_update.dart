import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';

class TomorrowUpdateScreen extends StatelessWidget {
  static String routeName = "/tomorrow-update";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Tomorrow Update'),
      ),
    );
  }
}