

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/utils/navigator_helper.dart';

class TemplateMainView extends StatefulWidget {
  const TemplateMainView({Key? key}) : super(key: key);

  @override
  State<TemplateMainView> createState() => _TemplateMainViewState();
}

class _TemplateMainViewState extends State<TemplateMainView> {

  List<Widget> listWidget = [
  ];
  void val(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              // goPush(
              //     // qrView()
              // );
            },
            child: Icon(
              PhosphorIcons.qrCodeFill,
              size: 32.0,
              // color: selectedIndex == 1 ? Colors.white : Colors.black,
            )
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        elevation: 20.0,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15
          ),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  //update the bottom app bar view each time an item is clicked
                  onPressed: () {
                    val(0);
                  },
                  iconSize: 32.0,
                  icon: Icon(
                    PhosphorIcons.houseBold,
                    size: 32.0,
                  ),
                  // color: selectedIndex == 0 ? primaryColor : Colors.grey.shade400,
                  //   //darken the icon if it is selected or else give it a different color
                  // color: val == 0
                  //   ? Colors.blue.shade900
                  //       : Colors.grey.shade400,
                ),
                SizedBox(
                  width: 50.0,
                ),
                IconButton(
                  //update the bottom app bar view each time an item is clicked
                  onPressed: () {
                    val(2);
                  },
                  iconSize: 32.0,
                  icon: Icon(
                    PhosphorIcons.userBold,
                    size: 32.0,
                  ),
                  //darken the icon if it is selected or else give it a different color
                  // color: selectedIndex == 2 ? primaryColor : Colors.grey.shade400,
                ),
              ]
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      // BottomNavigationBar(
      //   currentIndex: index,
      //   selectedItemColor: Colors.black,
      //   onTap: (val) {
      //     index = val;
      //     setState(() {});
      //   },
      //   unselectedItemColor: Colors.black.withOpacity(0.5),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         PhosphorIcons.houseBold,
      //         size: 32.0,
      //       ),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon (
      //         Icons.qr_code_scanner_rounded,
      //         size: 30,
      //       ),
      //       label: "QR Code",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         PhosphorIcons.userBold,
      //         size: 32.0,
      //       ),
      //       label: "Profile",
      //     )
      //   ]
      // ),
      body: listWidget.elementAt(selectedIndex),
    );
  }
}
