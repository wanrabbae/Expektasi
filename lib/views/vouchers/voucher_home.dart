import 'dart:math' as math;
import 'dart:ui';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:expektasi/views/vouchers/voucher_add.dart';
import 'package:expektasi/views/vouchers/voucher_other.dart';
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
        body: SingleChildScrollView(
          child: Column(
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
                  TextSpan(
                      text: 'Voucher', style: TextStyle(color: Colors.black))
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
                            padding: EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 3),
                            textStyle: TextStyle(fontSize: 11),
                            primary: Colors.black,
                            side: BorderSide(
                              width: 1,
                              color: Colors.grey,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (VoucherAddView())));
                        },
                        icon: Icon(
                          PhosphorIcons.ticket,
                          color: secondaryColor,
                          size: 26.0,
                        ),
                        label: Text("Masukan kode Voucher",
                            style: TextStyle(fontSize: 10)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Expanded(
                      child: new OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.only(
                                top: 20, bottom: 20, left: 10, right: 3),
                            textStyle: TextStyle(fontSize: 11),
                            primary: Colors.black,
                            side: BorderSide(width: 1, color: Colors.grey)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (VoucherOthersView())));
                        },
                        icon: Icon(
                          PhosphorIcons.plusCircleBold,
                          color: secondaryColor,
                          size: 26.0,
                        ),
                        label: Text("Dapatkan Voucher Lainnya",
                            style: TextStyle(fontSize: 10)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: listVouchers.map((data) {
                    return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: InkWell(
                            onTap: () {},
                            splashColor: secondaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Container(
                                  height: double.infinity,
                                  child: Image.network(
                                    data["image"],
                                    fit: BoxFit.fill,
                                  ),
                                )),
                                Padding(padding: EdgeInsets.only(right: 4)),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data["name"],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Hingga ${data["date"]}",
                                          style: TextStyle(fontSize: 10),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ))),
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.only(top: 5),
                                        height: double.infinity,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Khsusus pengguna baru',
                                              style: TextStyle(
                                                  color: secondaryColor,
                                                  fontSize: 6),
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Gunakan >",
                                                  style: TextStyle(
                                                      color: secondaryColor,
                                                      fontSize: 11),
                                                ))
                                          ],
                                        )))
                              ],
                            )));
                  }).toList(),
                ),
              )
            ],
          ),
        ));
  }
}
