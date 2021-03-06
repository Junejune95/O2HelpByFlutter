import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class PhoneNumberWidget extends StatelessWidget {
  final List<String> phoneNumber;

  const PhoneNumberWidget({Key key, @required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.phone,
          color: Color(0xFF0086D9),
        ),
        SizedBox(
          width: 10,
        ),
        for (var ph in phoneNumber)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                UrlLauncher.launch('tel:+${ph.toString()}');
              },
              child: Text(
                ph,
                style: TextStyle(
                    color: Color(0xFF0086D9), fontWeight: FontWeight.w500),
              ),
            ),
          )
      ],
    );
  }
}
