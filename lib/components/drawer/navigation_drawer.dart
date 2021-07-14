import 'package:O2help/components/drawer/drawer_footer.dart';
import 'package:O2help/components/drawer/drawer_header.dart';
import 'package:flutter/material.dart';

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
                 ListTile(
                  title: Text('Tomorrow Update'),
                  leading: Icon(Icons.update),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Save'),
                  leading: Icon(Icons.bookmark),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Request'),
                  leading: Icon(Icons.message_sharp),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
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
