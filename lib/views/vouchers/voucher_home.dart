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
          Card(
            elevation: 0,
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: InkWell(
              splashColor: secondaryColor.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped');
              },
              child: Container(
                margin: EdgeInsets.only(left: 3, right: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 229, 221, 221),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  height: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          PhosphorIcons.ticket,
                          size: 25.0,
                          color: secondaryColor,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Masukan Voucher ",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
