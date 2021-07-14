import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:O2help/screen/save/body/body.dart';
import 'package:flutter/material.dart';

class SaveScreen extends StatelessWidget {
  static String routeName = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Color(0xFFF8F7F7),
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Save'),
      ),
      body: Body(),
    );
  }
}
