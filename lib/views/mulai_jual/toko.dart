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
  File? foto;

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

  Future pickPhoto() async {
    try {
      final foto = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto == null) return;

      final fotoTmp = File(foto.path);
      setState(() => this.foto = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  var _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
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
              SizedBox(
                height: 20,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                    child: Text("Asep Shop"),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 5))
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                    child: Text(
                      "Jln. Kenangan Indah, Rt.09/Rw.02, Ds. Mantan Baru",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3))
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                    child: Text(
                      "Deskripsi Toko",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 0))
                    ]),
                  )
                ],
              ),
              new Column(
                children: [
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: _controller,
                              style: TextStyle(color: secondaryColor),
                              autofocus: false,
                              minLines: 7,
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  hintText: "Ketik Deskripsi",
                                  hintStyle: TextStyle(color: secondaryColor),
                                  suffixIcon: IconButton(
                                    onPressed: _controller.clear,
                                    icon: Icon(
                                      PhosphorIcons.xBold,
                                      color: secondaryColor,
                                    ),
                                  )),
                            )),
                        new Container(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                onPressed: () => print("Button Tapped"),
                                icon: Icon(
                                  PhosphorIcons.checkBold,
                                  size: 35,
                                  color: secondaryColor,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3))
                    ]),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: Text("Foto dan Video"),
                        ),
                        new SizedBox(
                          height: 15,
                        ),
                        new Row(
                          children: [
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ))),
    );
  }
}
