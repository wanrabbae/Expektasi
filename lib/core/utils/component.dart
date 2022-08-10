
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


Color secondaryColor = Color(0xffFDD100);

AppBar customAppBar({PreferredSizeWidget? bottom, List<Widget>? actions}) => AppBar(
  backgroundColor: secondaryColor,
  title: Container(
    width: double.infinity,
    height: 35,
    // decoration: BoxDecoration(
    //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 0
          ),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                /* Clear the search field */
              },
            ),
            hintText: 'Hari ini mau nyari apa nih?..',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  ),
  actions: actions,
  elevation: 3,
  toolbarHeight: 70,
);
AppBar customAppBar2([PreferredSizeWidget? bottom]) => AppBar(
  backgroundColor: Colors.white,
  elevation: 2,
  title: Center(
    child: Text(
      'Keranjang Belanja',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: Colors.black
      ),
    ),
  ),
  bottom: TabBar(
    tabs: [
      Tab(
        text: 'Semua',
      ),
      Tab(
        text: 'Favorit',
      ),
      Tab(
        text: 'Beli Lagi',
      ),
    ],
  ),
  toolbarHeight: 80,
);

DefaultTabController customAppbar3() => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Center(
          child: Text(
            'Keranjang Belanja',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),
          ),
        ),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'Semua',
            ),
            Tab(
              text: 'Favorit',
            ),
            Tab(
              text: 'Beli Lagi',
            ),
          ],
        ),
      ),
    )
);

AppBar customAppBar4({String? title, List<Widget>? actions}) => AppBar(
  elevation: 0.0,
  backgroundColor: secondaryColor,
  title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ],
      ),
    ],
  ),
  actions: actions,
  toolbarHeight: 80,
);

