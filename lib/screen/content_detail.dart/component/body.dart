import 'package:O2help/components/content/content_card_widget.dart';
import 'package:O2help/screen/content_detail.dart/component/comment_widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContentCardWidget(),
        for(var i=0;i<20;i++)
        CommentWidget()
      ],
    );
  }
}
