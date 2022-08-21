import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VoucherAddView extends StatefulWidget {
  const VoucherAddView({Key? key}) : super(key: key);

  @override
  State<VoucherAddView> createState() => _VoucherAddViewState();
}

class _VoucherAddViewState extends State<VoucherAddView> {
  bool _isFilled = false;

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
          child: Column(children: [
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Container(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        PhosphorIcons.ticketBold,
                        size: 18,
                        color: secondaryColor,
                      ),
                    )),
                    TextSpan(
                        text: 'Masukkan kode voucher',
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ])),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: TextFormField(
                      onChanged: (text) {
                        setState(() {
                          _isFilled = true;
                        });
                      },
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        hintText: "Contoh : KJ67AG",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 2.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide(
                                color: Colors.grey.shade300, width: 2.0)),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: _isFilled ? () {} : null,
                      child: Text(
                        'Cek voucher',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            _isFilled ? secondaryColor : Colors.grey.shade500),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                      ))
                ],
              ),
            )
          ]),
        ));
  }
}
