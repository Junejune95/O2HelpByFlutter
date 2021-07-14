import 'package:flutter/material.dart';

import '../../constants.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final String username;
  final String phonenumber;

  const DrawerHeaderWidget({Key key,@required this.username,@required this.phonenumber}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: kTextColor,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: TextStyle(
              fontSize: 18,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            phonenumber,
            style: TextStyle(
              fontSize: 18,
              color: kTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
