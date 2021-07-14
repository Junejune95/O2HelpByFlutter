import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFEAE8E8),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Zune',
                  style: TextStyle(
                    fontSize: 16,
                    // color: ,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '3:20 AM',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'ဆက်ကြည့်တာအဆင်ပြေပါတယ်',
              style: TextStyle(
                fontSize: 16,
                // color: ,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
