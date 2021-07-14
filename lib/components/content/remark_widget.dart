import 'package:flutter/material.dart';

import '../../constants.dart';

class RemarkWidget extends StatelessWidget {
  final String remark;

  const RemarkWidget({Key key, @required this.remark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        Icons.info_rounded,
        color: kPrimaryColor,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        remark,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ]);
  }
}
