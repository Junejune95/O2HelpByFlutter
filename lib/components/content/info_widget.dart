import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String info;

  const InfoWidget({Key key, @required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
    );
  }
}
