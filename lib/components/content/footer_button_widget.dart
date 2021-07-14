import 'package:O2help/constants.dart';
import 'package:flutter/material.dart';

class FooterButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;
  final Function press;

  const FooterButtonWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.count,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count,
              style: Theme.of(context).textTheme.caption,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Icon(
                icon,
                size: 18,
                color: kTextColor,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        onPressed: press,
      ),
    );
  }
}
