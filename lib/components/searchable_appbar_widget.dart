import 'package:flutter/material.dart';

import '../constants.dart';

class SearchAbleAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(64),
      child: AppBar(
        centerTitle: false,
        title: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'စမ်းချောင်းမြို့နယ် ရန်ကုန်',
              ),
              Text(
                'Select Location',
                style: TextStyle(color: kTextColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
