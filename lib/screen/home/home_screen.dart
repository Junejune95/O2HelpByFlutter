import 'package:O2help/components/drawer/navigation_drawer.dart';
import 'package:O2help/components/primary_button.dart';
import 'package:O2help/constants.dart';
import 'package:O2help/screen/home/component/body.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _appbarHeight = 60;

  void _onSelectedMenu() {
    setState(() {
      _appbarHeight = _appbarHeight == 60 ? 320 : 60;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F7F7),
      drawer: NavigationDrawer(),
      appBar: buildPreferredSize(),
      body: Body(),
    );
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
                  ),
                   SizedBox(
                    height: 20,
                  ),
                PrimaryButton(label: 'Confirm', press: (){},width: 100,)
                ],
              ),
            )
        ],
      ),
    );
  }
}
