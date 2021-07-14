import 'package:O2help/components/content/content_card_widget.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(20, (index) => ContentCardWidget()),
    );
  }
}
