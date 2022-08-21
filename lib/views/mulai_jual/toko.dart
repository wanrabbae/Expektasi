import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:image_picker/image_picker.dart';

class Toko extends StatefulWidget {
  const Toko({Key? key}) : super(key: key);

  @override
  State<Toko> createState() => _TokoState();
}

class _TokoState extends State<Toko> {
  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
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
              height: 200,
              color: Color.fromARGB(255, 228, 222, 222),
              child: InkWell(
                onTap: () => pickImage(),
                child: Column(
                  children: [
                    new Container(
                      padding: EdgeInsets.only(top: 60.0),
                      alignment: FractionalOffset.center,
                      child: Icon(
                        PhosphorIcons.plusCircleBold,
                        size: 83,
                        color: secondaryColor,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 40.0)),
                    new Container(
                        alignment: Alignment.bottomCenter,
                        width: double.infinity,
                        color: Color.fromARGB(255, 44, 40, 40),
                        child: Text(
                          "Tap untuk menambah atau mengubah foto profil toko",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
