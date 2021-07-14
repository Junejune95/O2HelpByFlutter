import 'package:O2help/screen/content_detail.dart/component/body.dart';
import 'package:flutter/material.dart';

class ContentDetailScreen extends StatelessWidget {
  static String routeName = "/content-detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F7F7),
      appBar: AppBar(
        title: Text('Plant Name'),
      ),
      body: Body(),
    );
  }
}
