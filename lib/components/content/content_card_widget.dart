import 'package:O2help/components/content/O2_info_widget.dart';
import 'package:O2help/components/content/footer_button_widget.dart';
import 'package:O2help/components/content/phonenumber_widget.dart';
import 'package:O2help/components/content/remark_widget.dart';
import 'package:O2help/components/content/spacer_widget.dart';
import 'package:O2help/components/content/status_box_widget.dart';
import 'package:O2help/constants.dart';
import 'package:O2help/models/post.model.dart';
import 'package:flutter/material.dart';

import 'address_widget.dart';
import 'info_widget.dart';
import 'package:flutter/widgets.dart';

class ContentCardWidget extends StatelessWidget {
  final PostModel post;
  ContentCardWidget(this.post);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ...post.status
                        .map((e) => StatusBoxWidget(status: e))
                        .toList(),
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
                  size: post.size,
                  date: '10:30 AM',
                ),
                SpacerWidget(),
                InfoWidget(
                  info: post.information,
                ),
                SpacerWidget(),
                AddressWidget(address: post.address),
                SpacerWidget(),
                PhoneNumberWidget(phoneNumber: post.phoneNumber.split(',')),
                SpacerWidget(),
                if (post.remark != null ||
                    post.remark != '' ||
                    post.remark != ' ')
                  RemarkWidget(
                    remark: post.remark,
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
