import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/order/choose_voucher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OrderView1 extends StatefulWidget {
  const OrderView1({Key? key}) : super(key: key);

  @override
  State<OrderView1> createState() => _OrderView1State();
}

class _OrderView1State extends State<OrderView1> {
  Widget borderCustom() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 0.5)),
    );
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
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        width: 400,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        PhosphorIcons.mapPinFill,
                        size: 15,
                        color: Colors.red,
                      )),
                      TextSpan(
                          text: "Alamat Penerima",
                          style: TextStyle(fontSize: 13, color: Colors.black))
                    ])),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Text(
                        "Abdul Azis | (+62) xxxxxxx Perumahan Kusuma Indah Gang Edelweis No.2  (Pt. Java Genius All Technology) WERU, KAB. CIREBON, JAWA BARAT, ID 45154",
                        style: TextStyle(
                          fontSize: 11,
                        ))
                  ]),
            ),
            borderCustom(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    WidgetSpan(
                        child: Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        PhosphorIcons.storefrontBold,
                        size: 15,
                        color: secondaryColor,
                      ),
                    )),
                    TextSpan(
                        text: "John Shop",
                        style: TextStyle(fontSize: 13, color: secondaryColor))
                  ])),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      child: Image.network(
                        'https://cdn.discordapp.com/attachments/1008921423915532368/1011899536995786803/Rectangle_374.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SWEATER PRIA - ESOBOY\n HOODIE JUMPER",
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                          Text(
                            "Variasi: Off Black/Bw",
                            style: TextStyle(
                                fontSize: 9, color: Colors.grey.shade400),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                          Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp85.500",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.grey.shade400),
                                ),
                                Text(
                                  "x1",
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.grey.shade400),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
            borderCustom(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "PENGIRIMAN",
                          style: TextStyle(fontSize: 11),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(PhosphorIcons.caretRightBold),
                          iconSize: 20,
                          color: secondaryColor,
                        )
                      ]),
                )),
            borderCustom(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "TITIPAN :",
                          style: TextStyle(fontSize: 11),
                        ),
                        Container(
                          width: 200,
                          child: TextFormField(
                            style: TextStyle(fontSize: 11),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                hintText: "Ketik titipan pesan anda..",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ]),
                )),
            borderCustom(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "TOTAL PESANAN :",
                          style: TextStyle(fontSize: 11),
                        ),
                        Text(
                          "Rp95.000",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ]),
                )),
            borderCustom(),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (VoucherChoose())));
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              PhosphorIcons.ticketBold,
                              size: 18,
                              color: secondaryColor,
                            ),
                          )),
                          TextSpan(
                              text: "VOUCHER",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11))
                        ])),
                        Text(
                          "1 voucher terpilih",
                          style: TextStyle(fontSize: 9, color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(PhosphorIcons.caretRightBold),
                          iconSize: 20,
                          color: secondaryColor,
                        )
                      ]),
                )),
            borderCustom(),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              PhosphorIcons.currencyCircleDollarBold,
                              size: 18,
                              color: secondaryColor,
                            ),
                          )),
                          TextSpan(
                              text: "Metode Pembayaran".toUpperCase(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14))
                        ])),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(PhosphorIcons.caretRightBold),
                          iconSize: 20,
                          color: secondaryColor,
                        )
                      ]),
                )),
            borderCustom(),
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        onPressed: () {},
        child: Text("BUAT PESANAN"),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(secondaryColor),
            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
      )),
    );
  }
}
