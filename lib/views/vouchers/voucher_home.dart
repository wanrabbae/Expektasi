import 'dart:math' as math;
import 'dart:ui';
import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VoucherView extends StatefulWidget {
  const VoucherView({Key? key}) : super(key: key);

  @override
  State<VoucherView> createState() => _VoucherViewState();
}

class _VoucherViewState extends State<VoucherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 25, top: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: secondaryColor,
                  width: 5,
                ),
              ),
            ),
            child: RichText(
                text: TextSpan(style: TextStyle(fontSize: 35), children: [
              TextSpan(text: 'Voucher', style: TextStyle(color: Colors.black))
            ])),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(32),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                        textStyle: TextStyle(fontSize: 11),
                        primary: Colors.black,
                        side: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        )),
                    onPressed: () {
                      debugPrint('The Button Pressed');
                    },
                    icon: Icon(
                      PhosphorIcons.ticket,
                      color: secondaryColor,
                      size: 26.0,
                    ),
                    label: Text("Masukan kode Voucher",
                        style: TextStyle(fontSize: 11)),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                Expanded(
                  child: new OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
                        textStyle: TextStyle(fontSize: 11),
                        primary: Colors.black,
                        side: BorderSide(width: 2, color: Colors.grey)),
                    onPressed: () {
                      debugPrint('The Button Pressed');
                    },
                    icon: Icon(
                      PhosphorIcons.plusCircleBold,
                      color: secondaryColor,
                      size: 26.0,
                    ),
                    label: Text("Dapatkan Voucher Lainnya",
                        style: TextStyle(fontSize: 11)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  child: InkWell(
                    splashColor: secondaryColor.withAlpha(30),
                    onTap: () {
                      debugPrint("Card on Tapped");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: SizedBox(
                          width: 300,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Transform.rotate(
                                  angle: 90 * math.pi / 180,
                                  child: new LayoutBuilder(
                                    builder: (context, constraints) {
                                      return new Icon(
                                        PhosphorIcons.ticket,
                                        color: secondaryColor,
                                        size: 125,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 60),
                                margin: EdgeInsets.only(top: 13),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Khusus Pengguna  Baru",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  child: InkWell(
                    splashColor: secondaryColor.withAlpha(30),
                    onTap: () {
                      debugPrint("Card on Tapped");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: SizedBox(
                          width: 300,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Transform.rotate(
                                  angle: 90 * math.pi / 180,
                                  child: new LayoutBuilder(
                                    builder: (context, constraints) {
                                      return new Icon(
                                        PhosphorIcons.ticket,
                                        color: secondaryColor,
                                        size: 125,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 60),
                                margin: EdgeInsets.only(top: 13),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Khusus Pengguna  Baru",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 9),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [],
                                ),
                              )
                            ],
                          )),
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
