import 'package:flutter/material.dart';

import '../../constants.dart';

class O2InfoWidget extends StatelessWidget {
  final String name;
  final List<String> size;
  final String date;

  const O2InfoWidget(
      {Key key, @required this.name, @required this.size, @required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(date, style: Theme.of(context).textTheme.caption)
          ],
        ),
        Spacer(),
        for (var i = 0; i < size.length; i++)
          Text(size[i] + (i != size.length - 1 ? '/' : '')),
      ],
    );
  }
}
