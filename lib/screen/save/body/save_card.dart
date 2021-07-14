import 'package:O2help/components/content/O2_info_widget.dart';
import 'package:O2help/components/content/status_box_widget.dart';
import 'package:flutter/material.dart';

class SaveCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                StatusBoxWidget(status: '၀ယ်ရန်'),
                StatusBoxWidget(status: 'ငှားရန်'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            O2InfoWidget(
              name: 'Plant Name',
              size: ['အိုးကြိး'],
              date: '3:10 AM',
            ),
          ],
        ),
      ),
    );
  }
}
