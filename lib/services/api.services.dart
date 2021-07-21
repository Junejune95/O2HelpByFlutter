import 'dart:convert' as convert;
import 'dart:io';
import 'package:O2help/models/post.model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

var baseUrl = "https://covid-19helpmyanmar.com/api";
//account sign in
Future<bool> signIn(String name, String phoneNumber) async {
  var url = baseUrl + '/users';

  Dio dio = new Dio();

  var body =
      convert.jsonEncode({"name": name, "phone": phoneNumber}); // just like JS

  var response = await dio.post(url,
      data: body,
      options: Options(
          method: 'POST',
          responseType: ResponseType.json // or ResponseType.JSON
          ));
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (response.statusCode == 200) {
    print('Fg Pwd: $response.');
    // var result = await response.stream.bytesToString();
    var result = response.data;
    prefs.setString('token', result['token']);

    return true;
  } else {
    print('Request failed with status: ${response}.');
    return true;
  }
}

Future<List<PostModel>> getPost(String regionId, String township, String filter,
    bool tomorrowUpdate) async {
  var url = baseUrl +
      '/posts?tomorrowUpdate' +
      tomorrowUpdate.toString() +
      '&regionId=' +
      regionId +
      "&townshipId=" +
      township +
      "&filter=" +
      filter;

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String token = prefs.getString('token');
  Dio dio = new Dio();
  dio.options.headers["authorization"] = "Bearer " + token;
// just like JS

  var response = await dio.get(url,
      options: Options(
          method: 'GET', responseType: ResponseType.json // or ResponseType.JSON
          ));
  if (response.statusCode == 200) {
    print('Fg Pwd: $response.');
    // var result = await response.stream.bytesToString();
    var result = response.data;
    List<PostModel> postmodeList = [];
    result.forEach((val) {
      List<String> status = [];
      val['status'].forEach((sts) {
        status.add(sts);
      });
      val['status'] = status;
      List<String> size = [];
      val['size'].forEach((sz) {
        size.add(sz);
      });
      val['size'] = size;
      PostModel postModel = PostModel.fromJson(val);

      postmodeList.add(postModel);
    });

    return postmodeList;
  } else {
    print('Request failed with status: ${response}.');
    return [];
  }
}
