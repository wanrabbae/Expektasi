import 'dart:io';
import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:image_picker/image_picker.dart';

class Toko extends StatefulWidget {
  const Toko({Key? key}) : super(key: key);

  @override
  State<Toko> createState() => _TokoState();
}

class _TokoState extends State<Toko> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: <Widget>[
              new TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit",
                    style: TextStyle(fontSize: 16.7, color: Colors.black),
                  ))
            ],
            title: Text(
              "Toko",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 16.7),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: new SingleChildScrollView(
              child: new Column(
            children: [
              new Container(
                  width: 450,
                  color: Color.fromARGB(255, 228, 222, 222),
                  child: InkWell(
                    onTap: () => pickImage(),
                    child: Column(
                      children: [
                        new Container(
                            padding:
                                EdgeInsets.only(top: image != null ? 0 : 60.0),
                            child: image != null
                                ? Image.file(
                                    image!,
                                    width: 450,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  )
                                : Icon(
                                    PhosphorIcons.plusCircleBold,
                                    size: 83,
                                    color: secondaryColor,
                                  )),
                      ],
                    ),
                  )),
              new Container(
                width: double.infinity,
                color: Color.fromARGB(255, 59, 48, 48),
                child: Text(
                  "Tap untuk Menambah atau mengubah foto profil toko",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ))
    );
  }
}
