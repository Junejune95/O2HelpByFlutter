import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:O2help/screen/request/component/body.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatelessWidget {
  static String routeName = "/request";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Request'),
      ),
      body: Body(),
    );
  }
}
