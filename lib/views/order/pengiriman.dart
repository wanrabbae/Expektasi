import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/views/order/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PengirimanView extends StatefulWidget {
  const PengirimanView({Key? key}) : super(key: key);

  @override
  State<PengirimanView> createState() => _PengirimanViewState();
}

class _PengirimanViewState extends State<PengirimanView> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return secondaryColor;
    }
    return Color.fromARGB(255, 252, 234, 145);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: secondaryColor,
        title: Text(
          'Opsi Pengiriman',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Icon(
                              PhosphorIcons.packageFill,
                              size: 40.0,
                              color: Colors.grey[400],
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Text(
                              "Antar ke Alamatmu",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[400]),
                            ),
                            Text(
                              "Dari Rp10.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey[400]),
                            )
                          ],
                        )),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Container(
                    height: 100,
                    width: 150,
                    child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Icon(
                              PhosphorIcons.packageFill,
                              size: 40.0,
                              color: Colors.grey[400],
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Text(
                              "Ambil di Tempat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[400]),
                            ),
                            Text(
                              "Dari Rp5.000",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 8, color: Colors.grey[400]),
                            )
                          ],
                        )),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(children: [
              Text(
                "Pilih Jasa Pengiriman",
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.start,
              ),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Container(
                child: ListView.builder(
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade400, width: 1.5),
                                bottom: BorderSide(
                                    color: Colors.grey.shade400, width: 1.5),
                                left: BorderSide(
                                    color: secondaryColor, width: 5))),
                        child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "Reguler ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: "Rp15.000",
                                          style:
                                              TextStyle(color: secondaryColor)),
                                    ])),
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3)),
                                    Text(
                                        "Akan diterima pada tanggal 1 Agustus - 5 Agustus",
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10))
                                  ],
                                ),
                                Icon(
                                  PhosphorIcons.checkFill,
                                  color: secondaryColor,
                                  size: 20.0,
                                )
                              ],
                            )),
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      checkColor: secondaryColor,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "SELALU PASANG VOUCHER",
                      style: TextStyle(fontSize: 10),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                    Icon(
                      PhosphorIcons.ticketFill,
                      size: 15.0,
                      color: secondaryColor,
                    )
                  ],
                ),
              ),
              isChecked
                  ? Container(
                      alignment: Alignment.centerRight,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "VOUCHER TERDETEKSI",
                              style: TextStyle(fontSize: 10),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Container(
                                width: 100,
                                decoration:
                                    BoxDecoration(color: Color(0xffFEF5C8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      PhosphorIcons.ticketFill,
                                      size: 12.0,
                                      color: secondaryColor,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3)),
                                    Text(
                                      "DISKON ONGKIR",
                                      style: TextStyle(fontSize: 9),
                                    )
                                  ],
                                ))
                          ]),
                    )
                  : Text("")
            ]),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        onPressed: () {
          goRemove(OrderView1(), context);
        },
        child: Text("KONFIRMASI"),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(secondaryColor),
            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
      )),
    );
  }
}
