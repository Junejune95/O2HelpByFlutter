import 'package:O2help/constants.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  final String address;

  const AddressWidget({Key key, @required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kTextColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          address,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
