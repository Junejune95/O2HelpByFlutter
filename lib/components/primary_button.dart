import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final double width;

  const PrimaryButton({Key key,@required this.label, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!=null ? width : MediaQuery.of(context).size.width,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
