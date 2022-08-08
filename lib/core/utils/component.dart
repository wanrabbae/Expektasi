
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


Color secondaryColor = Color(0xffFDD100);

AppBar customAppBar([PreferredSizeWidget? bottom]) => AppBar(
  backgroundColor: secondaryColor,
  title: Container(
    width: double.infinity,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.5
          ),
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                /* Clear the search field */
              },
            ),
            hintText: 'Hari ini mau nyari apa nih?..',
          border: InputBorder.none,
        ),
      ),
    ),
  ),
  actions: [
    IconButton(
        onPressed: (){},
        icon: Icon(
          PhosphorIcons.bellSimple,
          color: Colors.white,
        ),
    ),
    IconButton(
        onPressed: (){},
          icon: Icon(
            PhosphorIcons.chats,
            color: Colors.white,
          ),
    ),
  ],
  elevation: 3,
  toolbarHeight: 80,
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
