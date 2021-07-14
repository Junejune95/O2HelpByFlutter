import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:O2help/screen/home/component/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F7F7),
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Body(),
    );
  }
}
