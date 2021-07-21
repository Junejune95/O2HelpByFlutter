import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:O2help/models/region.model.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:O2help/screen/home/component/body.dart';

import '../../constants.dart';

class TomorrowUpdateScreen extends StatefulWidget {
  static String routeName = "/tomorrow-update";

  @override
  _TomorrowUpdateScreenState createState() => _TomorrowUpdateScreenState();
}

class _TomorrowUpdateScreenState extends State<TomorrowUpdateScreen> {
  double _appbarHeight = 60;
  String regionId = "";
  String townshipId = "";
  String location = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    regionId = "";
    townshipId = "";
  }

  void _onSelectedMenu() {
    setState(() {
      _appbarHeight = _appbarHeight == 60 ? 320 : 60;
    });
  }

  getData(filter) {
    print(filter);
  }

  @override
  Widget build(BuildContext context) {
    final String filter = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color(0xFFF8F7F7),
        drawer: NavigationDrawer(),
        appBar: buildPreferredSize(),
        body: Body(regionId, townshipId, true, filter));
  }

  PreferredSize buildPreferredSize() {
    return PreferredSize(
      preferredSize: Size.fromHeight(_appbarHeight),
      child: Column(
        children: [
          AppBar(
            centerTitle: false,
            title: GestureDetector(
              onTap: () {
                _onSelectedMenu();
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location,
                  ),
                  Text(
                    'Select Location',
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ),
          if (_appbarHeight == 320)
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownSearch<RegionModel>(
                    mode: Mode.MENU,
                    label: "Region",
                    onFind: (String filter) => getRegion(),
                    onChanged: (data) {
                      setState(() {
                        regionId = data.id;
                        location = location + " " + data.name;
                      });
                    },
                    dropdownBuilder: _customDropDownExample,
                    popupItemBuilder: _customPopupItemBuilderExample,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownSearch<RegionModel>(
                    mode: Mode.MENU,
                    label: "Township",
                    onFind: (String filter) => getTownship(regionId),
                    dropdownBuilder: _customDropDownTownExample,
                    popupItemBuilder: _customPopupItemBuilderExample,
                    onChanged: (data) {
                      setState(() {
                        townshipId = data.id;
                        location = data.name + " " + location;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

Widget _customDropDownExample(
    BuildContext context, RegionModel item, String gg) {
  print(item);
  return Container(
    child: (item == null)
        ? ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("Select Region"),
          )
        : ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(item.name),
          ),
  );
}

Future<List<RegionModel>> getRegion() async {
  var response = await Dio().get(
    "https://covid-19helpmyanmar.com/api/regions",
  );
  List<RegionModel> regionModelList = [];
  response.data.forEach((val) {
    RegionModel regionModel = RegionModel.fromJson(val);
    regionModelList.add(regionModel);
  });
  if (regionModelList.length != 0) {
    return regionModelList;
  }

  return [];
}

Future<List<RegionModel>> getTownship(regionId) async {
  var response = await Dio().get(
    "https://covid-19helpmyanmar.com/api/townships?regionId=" + regionId,
  );
  List<RegionModel> regionModelList = [];
  print(response.data);
  response.data.forEach((val) {
    RegionModel regionModel = RegionModel.fromJson(val);
    regionModelList.add(regionModel);
  });
  if (regionModelList.length != 0) {
    return regionModelList;
  }

  return [];
}

Widget _customPopupItemBuilderExample(
    BuildContext context, RegionModel item, bool isSelected) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: !isSelected
        ? null
        : BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
    child: ListTile(
      selected: isSelected,
      title: Text(item.name ?? ''),
    ),
  );
}

Widget _customDropDownTownExample(
    BuildContext context, RegionModel item, String gg) {
  print(item);
  return Container(
    child: (item == null)
        ? ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("Select Township"),
          )
        : ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(item.name),
          ),
  );
}
