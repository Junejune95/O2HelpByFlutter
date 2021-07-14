import 'package:O2help/components/drawer/drawer_footer.dart';
import 'package:O2help/components/drawer/drawer_header.dart';
import 'package:O2help/screen/home/home_screen.dart';
import 'package:O2help/screen/request/request_screen.dart';
import 'package:O2help/screen/save/save_screen.dart';
import 'package:O2help/screen/tomorrow_update/tomorrow_update.dart';
import 'package:flutter/material.dart';

import '../../app_enum.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                DrawerHeaderWidget(
                  username: 'June',
                  phonenumber: '09976532391',
                ),
                Column(
                  children: Menu.values
                      .map(
                        (e) => ListTile(
                          title: Text(e.getMenuLabel),
                          leading: Icon(e.getMenuIcon),
                          onTap: () {
                            Navigator.pushNamed(context, e.getMenuRoute);
                          },
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          DrawerFooterWidget(),
        ],
      ),
    );
  }
}