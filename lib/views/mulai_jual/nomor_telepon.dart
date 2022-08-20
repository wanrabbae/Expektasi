import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/mulai_jual/mulai_jual_home.dart';
import 'package:expektasi/views/mulai_jual/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NomorTelepon extends StatefulWidget {
  const NomorTelepon({Key? key}) : super(key: key);

  @override
  State<NomorTelepon> createState() => _NomorTeleponState();
}

class _NomorTeleponState extends State<NomorTelepon> {
  bool isTextFiledFocus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Tambah No.Handphone",
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
      body: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                Focus(
                  child: new TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: secondaryColor),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          PhosphorIcons.phoneBold,
                          color: secondaryColor,
                        ),
                        hintText: "No.Handphone Baru"),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  onFocusChange: (hasFocus) {
                    setState(() {
                      isTextFiledFocus = hasFocus;
                    });
                  },
                ),
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: new Container(
                    margin: EdgeInsets.only(top: 13),
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (Verification()))));
                      },
                      child: Text(
                        "Lanjut",
                        style: TextStyle(
                            color: isTextFiledFocus
                                ? Colors.white
                                : Color.fromARGB(255, 130, 107, 107)),
                      ),
                      color:
                          isTextFiledFocus ? secondaryColor : Colors.grey[400],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
