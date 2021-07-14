import 'package:flutter/material.dart';

import '../../constants.dart';

class StatusBoxWidget extends StatelessWidget {
  final String status;

  const StatusBoxWidget({Key key, @required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        status,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
