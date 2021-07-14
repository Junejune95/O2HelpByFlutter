import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';

class SaveScreen extends StatelessWidget {
  static String routeName = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Save'),
      ),
    );
  }
}
