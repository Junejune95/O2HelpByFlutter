import 'package:O2help/screen/login/component/login_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'O2 Help',
            style: Theme.of(context).textTheme.headline3,
          ),
            SizedBox(
              height: 30,
            ),
          LoginForm()
        ],
      ),
    );
  }
}
