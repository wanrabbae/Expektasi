import 'dart:io';

import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

class NilaiProductView extends StatefulWidget {
  const NilaiProductView({Key? key}) : super(key: key);

  @override
  State<NilaiProductView> createState() => _NilaiProductViewState();
}

class _NilaiProductViewState extends State<NilaiProductView> {
  File? image;
  File? foto1;
  var _selectFromGalery;
  var _selectedFormCamera;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  Future pickPhoto1(ImageSource source) async {
    try {
      final foto1 = await ImagePicker().pickImage(source: source);
      if (foto1 == null) return;

      final image1Temporary = File(foto1.path);
      setState(() => this.foto1 = image1Temporary);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  void _onPressedButton1() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return new Container(
            height: 120,
            child: _buildBottemSheet1(),
          );
        });
  }

  Column _buildBottemSheet1() {
    return new Column(
      children: [
        ListTile(
          leading: Icon(PhosphorIcons.camera),
          title: Text("Ambil Gambar"),
          onTap: () => _selectCamera1(),
        ),
        ListTile(
          leading: Icon(PhosphorIcons.image),
          title: Text("Pilih Gambar"),
          onTap: () => _selectGalery1(),
        ),
      ],
    );
  }

  void _selectCamera1() {
    setState(() {
      _selectedFormCamera = pickPhoto1(ImageSource.camera);
    });
  }

  void _selectGalery1() {
    setState(() {
      _selectFromGalery = pickPhoto1(ImageSource.gallery);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Nilai Produk",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  child: Image.network(
                    'https://cdn.discordapp.com/attachments/1008921423915532368/1011899536995786803/Rectangle_374.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '''SWEATER PRIA - ESOBOY HOODIE JUMPER''',
                        style: TextStyle(fontSize: 11, color: Colors.black),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                      Text(
                        "Variasi: Hitam",
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.grey.shade300, width: 1)),
              ),
              child: RatingStars(
                editable: true,
                rating: 0,
                color: Colors.amber,
                iconSize: 40,
              ),
            ),
            CustomCheckBoxGroup(
              buttonTextStyle: ButtonTextStyle(
                selectedColor: Colors.black,
                unSelectedColor: Colors.black,
                textStyle: TextStyle(
                  fontSize: 11,
                ),
              ),
              unSelectedColor: Colors.grey.shade100,
              buttonLables: [
                "Kualitas Produk baik",
                "Harga murah",
                "Produk original",
                "Harga produk sangat baik",
                "Respon penjual sangat baik",
                "Kecepatan pengiriman sangat baik",
              ],
              buttonValuesList: [
                "Kualitas Produk baik",
                "Harga murah",
                "Produk original",
                "Harga produk sangat baik",
                "Respon penjual sangat baik",
                "Kecepatan pengiriman sangat baik",
              ],
              checkBoxButtonValues: (values) {
                print(values);
              },
              spacing: 0,
              horizontal: false,
              enableButtonWrap: false,
              autoWidth: true,
              elevation: 0,
              enableShape: true,
              absoluteZeroSpacing: false,
              selectedColor: Colors.white,
              selectedBorderColor: Color(0xffEB9007),
              unSelectedBorderColor: Colors.grey.shade400,
              padding: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                maxLines: 8, //or null
                decoration: InputDecoration(
                  hintText:
                      "Mengapa anda sangat menyukai produk ini? Yuk beritahu pengguna lain!",
                  hintStyle: TextStyle(fontSize: 12),
                  fillColor: Colors.grey.shade300,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1.0)),
                ),
              ),
            ),
            GestureDetector(
              onTap: _onPressedButton1,
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(children: [
                    Icon(
                      PhosphorIcons.plus,
                      size: 50,
                      color: secondaryColor,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                    Text(
                      "Tambah Foto",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(secondaryColor),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ))),
                child: Text("Kirim",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      )),
    );
  }
}
