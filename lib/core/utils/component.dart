import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Color secondaryColor = Color(0xffFDD100);
File? foto1;

Future pickPhoto1(ImageSource camera) async {
  try {
    final foto1 = await ImagePicker().pickImage(source: ImageSource.camera);
    if (foto1 == null) return;

    // final fotoTmp = File(foto1.path);
  } on PlatformException catch (e) {
    print("Failed to pick a image : $e");
  }
}

AppBar customAppBar({PreferredSizeWidget? bottom, List<Widget>? actions}) =>
    AppBar(
      backgroundColor: secondaryColor,
      title: Container(
        width: double.infinity,
        height: 35,
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.camera_alt),
                onPressed: () async {
                  /* Clear the search field */
                  await pickPhoto1(ImageSource.camera);
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
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
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
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
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
    ));

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

AppBar customAppBar5(context) => AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: secondaryColor,
      title: Container(
        width: double.infinity,
        height: 35,
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            filled: true,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () async {
                /* Clear the search field */
                await pickPhoto1(ImageSource.camera);
              },
            ),
            hintText: 'Mau nyari barang apa?',
            hintStyle: TextStyle(fontSize: 13),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      elevation: 0,
      toolbarHeight: 70,
    );
