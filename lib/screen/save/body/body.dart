import 'package:O2help/screen/content_detail.dart/content_detail_screen.dart';
import 'package:O2help/screen/save/body/save_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
        (index) => GestureDetector(
          child: SaveCard(),
          onTap: () {
            Navigator.pushNamed(context, ContentDetailScreen.routeName);
          },
        ),
      ),
    );
  }
}
