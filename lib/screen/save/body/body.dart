import 'package:O2help/screen/save/body/save_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(20, (index) => SaveCard()),
    );
  }
}