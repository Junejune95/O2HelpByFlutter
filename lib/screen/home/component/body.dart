import 'package:O2help/components/content/content_card_widget.dart';
import 'package:O2help/models/post.model.dart';
import 'package:O2help/services/api.services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Future<List<PostModel>> postList;

class Body extends StatefulWidget {
  final String regionId, townshipId, filter;
  final bool tomorrowUpdate;
  Body(this.regionId, this.townshipId, this.tomorrowUpdate, this.filter);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    postList = getPost(widget.regionId, widget.townshipId, widget.filter,
        widget.tomorrowUpdate);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      postList = getPost(widget.regionId, widget.townshipId, widget.filter,
          widget.tomorrowUpdate);
    });
    return FutureBuilder(
        future: postList,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Container(
                  padding: EdgeInsets.only(top: 120),
                  child: SizedBox(
                    child: const SpinKitFadingFour(color: Colors.blue),
                    height: 100,
                  ));
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else {
                List<PostModel> data = snapshot.data;
                print(data.length);
                return data.length > 0
                    ? ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            child: ContentCardWidget(data[index]),
                            onTap: () {},
                          );
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: data.length,
                      )
                    : Text('No Data Exist  ');
              }
          }
        });
  }
}
