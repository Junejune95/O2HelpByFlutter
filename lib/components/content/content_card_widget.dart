import 'package:O2help/components/content/O2_info_widget.dart';
import 'package:O2help/components/content/footer_button_widget.dart';
import 'package:O2help/components/content/phonenumber_widget.dart';
import 'package:O2help/components/content/remark_widget.dart';
import 'package:O2help/components/content/spacer_widget.dart';
import 'package:O2help/components/content/status_box_widget.dart';
import 'package:O2help/constants.dart';
import 'package:flutter/material.dart';

import 'address_widget.dart';
import 'info_widget.dart';
import 'package:flutter/widgets.dart';

class ContentCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
     shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    StatusBoxWidget(status: '၀ယ်ရန်'),
                    StatusBoxWidget(status: 'ငှားရန်'),
                    StatusBoxWidget(status: 'ဖြည့်ရန်'),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.bookmark_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                SpacerWidget(),
                O2InfoWidget(
                  name: 'Plant name',
                  size: ['အိုးကြိး', 'အိုးသေး'],
                  date: '10:30 AM',
                ),
                SpacerWidget(),
                InfoWidget(
                  info:
                      'ဒီနေ့ နေ့လည် ၁၂ နာရီ ၁ နာရီလောက်မှာ စဖြည့်ပေးပါမယ်။10 L/15 L အိုးပဲ ရပါမယ် ။ကိုယ်တိုင်ဖုန်းဆက်ထားပါတယ်',
                ),
                SpacerWidget(),
                AddressWidget(
                    address: 'အမှတ် 17 ကျွန်းတောလမ်း စမ်းချောင်း ရန်ကုန်မြို့'),
                SpacerWidget(),
                PhoneNumberWidget(
                    phoneNumber: ['+959976532391', '+959976532391']),
                SpacerWidget(),
                RemarkWidget(
                  remark: 'လူကိုယ်တိုင်တန်းစီရမည်',
                ),
              ],
            ),
          ),
          Divider(
            color: kTextColor,
            height: 0.5,
          ),
          Row(
            children: [
              FooterButtonWidget(
                  icon: Icons.thumb_up_outlined,
                  title: 'OK',
                  count: '10',
                  press: () {}),
              FooterButtonWidget(
                  icon: Icons.comment_outlined,
                  title: 'Comment',
                  count: '10',
                  press: () {}),
              FooterButtonWidget(
                  icon: Icons.thumb_down_outlined,
                  title: 'Not Ok',
                  count: '10',
                  press: () {}),
            ],
          )
        ],
      ),
    );
  }
}
