import 'dart:io';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/atur_informasi.dart';
import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
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
  File? foto1;
  File? foto2;
  File? foto3;
  File? foto4;
  File? foto5;

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

  Future pickPhoto1() async {
    try {
      final foto1 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto1 == null) return;

      final fotoTmp = File(foto1.path);
      setState(() => this.foto1 = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  Future pickPhoto2() async {
    try {
      final foto2 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto2 == null) return;

      final fotoTmp = File(foto2.path);
      setState(() => this.foto2 = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  Future pickPhoto3() async {
    try {
      final foto3 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto3 == null) return;

      final fotoTmp = File(foto3.path);
      setState(() => this.foto3 = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  Future pickPhoto4() async {
    try {
      final foto4 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto4 == null) return;

      final fotoTmp = File(foto4.path);
      setState(() => this.foto4 = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  Future pickPhoto5() async {
    try {
      final foto5 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (foto5 == null) return;

      final fotoTmp = File(foto5.path);
      setState(() => this.foto5 = fotoTmp);
    } on PlatformException catch (e) {
      print("Failed to pick a image : $e");
    }
  }

  var _controller = new TextEditingController();

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
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => (AturInformasiToko())))),
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
                  onTap: () => pickImage(ImageSource.gallery),
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
              height: 10,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
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
                  padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
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
                  padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
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
                  padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
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
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Foto dan Video",
                          ),
                        ),
                      ),
                      new SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: new Row(
                          children: [
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto1(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto2(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto3(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto4(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto5(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto5(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto5(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            new SizedBox(
                              width: 20,
                            ),
                            new Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 224, 218, 218),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                onPressed: () => pickPhoto5(),
                                icon: Icon(
                                  PhosphorIcons.plusBold,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3))
                  ]),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Container(
                        padding: new EdgeInsets.all(50.0),
                        child: new Column(
                          children: [
                            new Container(
                              child: Text("Tambah Produk"),
                            ),
                            SizedBox(height: 15.0),
                            new Container(
                                padding: EdgeInsets.all(40.0),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 224, 218, 218),
                                    borderRadius: BorderRadius.circular(50)),
                                child: new InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                (TambahProduk()))));
                                  },
                                  child: Icon(
                                    PhosphorIcons.plusBold,
                                    size: 65,
                                    color: secondaryColor,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )));
  }
}
