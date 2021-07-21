import 'package:O2help/components/drawer/drawer_footer.dart';
import 'package:O2help/components/drawer/drawer_header.dart';
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
                          leading: e.getMenuLabel == 'Oxygen'
                              ? ImageIcon(
                                  AssetImage("assets/images/oxygen.png"),
                                  color: Colors.grey,
                                )
                              : e.getMenuLabel == 'Flowmeter'
                                  ? ImageIcon(
                                      AssetImage("assets/images/flowmeter.png"),
                                      color: Colors.grey,
                                    )
                                  : e.getMenuLabel == 'Oximeter'
                                      ? ImageIcon(
                                          AssetImage(
                                              "assets/images/oximeter.png"),
                                          color: Colors.grey,
                                        )
                                      : Icon(e.getMenuIcon),
                          onTap: () {
                            e.getMenuLabel == 'Oxygen'
                                ? Navigator.pushNamed(context, e.getMenuRoute,
                                    arguments: "Oxygen")
                                : e.getMenuLabel == 'Flowmeter'
                                    ? Navigator.pushNamed(
                                        context, e.getMenuRoute,
                                        arguments: "Flowmeter")
                                    : e.getMenuLabel == 'Oximeter'
                                        ? Navigator.pushNamed(
                                            context, e.getMenuRoute,
                                            arguments: "Oximeter")
                                        : Navigator.pushNamed(
                                            context, e.getMenuRoute);
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
