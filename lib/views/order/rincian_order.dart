import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/core/utils/product_card.dart';
import 'package:expektasi/views/home/order_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RincianOrderView extends StatefulWidget {
  const RincianOrderView({Key? key}) : super(key: key);

  @override
  State<RincianOrderView> createState() => _RincianOrderViewState();
}

class _RincianOrderViewState extends State<RincianOrderView> {
  Widget borderCustom() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200, width: 5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Rincian Pesanan",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromRGBO(235, 144, 7, 730)),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Menunggu Pembayaran",
                style: TextStyle(fontSize: 11),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Silahkan lakukan pembayaran paling\n lambat 28-07-2022 15:15 dengan\n Alfamart / Alfamidi / Dan+Dan",
                    style: TextStyle(fontSize: 10),
                  ),
                  Icon(
                    PhosphorIcons.creditCardFill,
                    size: 52.0,
                    color: secondaryColor,
                  )
                ],
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  PhosphorIcons.mapPinFill,
                  size: 15,
                  color: secondaryColor,
                )),
                TextSpan(
                    text: "Alamat Pengiriman",
                    style: TextStyle(fontSize: 12, color: Colors.black))
              ])),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    PhosphorIcons.currencyDollarFill,
                    size: 25.0,
                    color: secondaryColor,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Expanded(
                    flex: 1,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Metode Pembayaran",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black)),
                          Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                          Text("Alfamart / Alfamidi / Dan+Dan",
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey.shade400))
                        ]),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text("UBAH",
                            style: TextStyle(
                                color: secondaryColor, fontSize: 11))),
                  )
                ],
              )),
          borderCustom(),
          ProductOrderPendingCard(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            child: Column(children: [
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: secondaryColor, width: 2),
                      padding: EdgeInsets.all(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        PhosphorIcons.chats,
                        size: 22.0,
                        color: secondaryColor,
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                      Text(
                        "Kabari Penjual",
                        style: TextStyle(
                            color: Color.fromARGB(255, 107, 107, 107),
                            fontSize: 12),
                      )
                    ],
                  )),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              OutlinedButton(
                  onPressed: () {
                    goPush(RincianOrderView2(), context);
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      side: BorderSide(color: secondaryColor, width: 2),
                      padding: EdgeInsets.all(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bayar Sekarang",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ))
            ]),
          ),
        ]),
      ),
    );
  }
}

class RincianOrderView2 extends StatefulWidget {
  const RincianOrderView2({Key? key}) : super(key: key);

  @override
  State<RincianOrderView2> createState() => _RincianOrderView2State();
}

class _RincianOrderView2State extends State<RincianOrderView2> {
  Widget borderCustom() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200, width: 3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Rincian Pesanan",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            goPush(OrderViewList(0), context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TOTAL PEMBAYARAN",
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  "Rp95.500",
                  style: TextStyle(color: secondaryColor, fontSize: 11),
                )
              ],
            ),
          ),
          borderCustom(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BATAS WAKTU",
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  "15 jam 30 menit 0 detik",
                  style: TextStyle(color: secondaryColor, fontSize: 11),
                )
              ],
            ),
          ),
          borderCustom(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://cdn.discordapp.com/attachments/1008921423915532368/1012623387660664852/image_21.png',
                  width: 80,
                ),
                Text(
                  "Alfamart / Alfamidi / Dan+Dan",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 11),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "KODE PEMBAYARAN",
                  style: TextStyle(fontSize: 9),
                ),
                TextButton(
                  onPressed: () {
                    Clipboard.setData(
                        ClipboardData(text: "EXPT U0JF 7GNK 765"));
                  },
                  child: Text(
                    "SALIN",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 8),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: secondaryColor),
            child: SelectableText(
              "EXPT U0JF 7GNK 765",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ]),
      ),
    );
  }
}
