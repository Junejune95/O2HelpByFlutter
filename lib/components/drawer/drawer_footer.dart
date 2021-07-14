import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class DrawerFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      color: kTextColor,
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Row(
          children: [
            Icon(
              Icons.logout,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'LOG OUT',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
