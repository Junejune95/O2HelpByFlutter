import 'package:O2help/components/primary_button.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

double _appbarHeight = 60;

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  void _onSelectedMenu() {
    setState(() {
      _appbarHeight = _appbarHeight == 60 ? 320 : 60;
      print(_appbarHeight);
    });
  }

  getData(filter) {
    print(filter);
  }

  @override
  Widget build(BuildContext context) {
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
                    'စမ်းချောင်းမြို့နယ် ရန်ကုန်',
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
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                    label: "Region",
                    hint: "country in menu mode",
                    popupItemDisabled: (String s) => s.startsWith('I'),
                    onChanged: print,
                    selectedItem: "Brazil",
                    showClearButton: true,
                    showSearchBox: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                    label: "Menu mode",
                    hint: "country in menu mode",
                    popupItemDisabled: (String s) => s.startsWith('I'),
                    onChanged: print,
                    selectedItem: "Brazil",
                    onFind: (String filter) => getData(filter),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    label: 'Confirm',
                    press: () {},
                    width: 100,
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
