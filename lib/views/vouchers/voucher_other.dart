import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VoucherOthersView extends StatefulWidget {
  const VoucherOthersView({Key? key}) : super(key: key);

  @override
  State<VoucherOthersView> createState() => _VoucherOthersViewState();
}

class _VoucherOthersViewState extends State<VoucherOthersView> {
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
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                          'https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png',
                          fit: BoxFit.fill,
                        ),
                      )),
                      Padding(padding: EdgeInsets.only(right: 4)),
                      Expanded(
                          flex: 2,
                          child: Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Voucher Gratis Ongkir",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Hingga 25.09.2022",
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                              // RichText(text: TextSpan(children: [
                              //   TextSpan(text: "Voucher Gratis Ongkir", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                              //   TextSpan(text: "Hingga 25.09.2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                              // ]),)
                              )),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(top: 5),
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                            EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 2),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  secondaryColor)),
                                      child: Text(
                                        "Ambil",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ))
                                ],
                              )))
                    ],
                  ))),
        ]),
      ),
    );
  }
}
