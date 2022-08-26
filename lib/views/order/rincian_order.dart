import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
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
      body: Column(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color.fromRGBO(235, 144, 7, 730)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Menunggu Pembayaran",
              style: TextStyle(fontSize: 12),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Silahkan lakukan pembayaran paling\n lambat 28-07-2022 15:15 dengan\n Alfamart / Alfamidi / Dan+Dan",
                  style: TextStyle(fontSize: 12),
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
                  style: TextStyle(fontSize: 13, color: Colors.black))
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
                          style:
                              TextStyle(color: secondaryColor, fontSize: 11))),
                )
              ],
            )),
        borderCustom(),
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
                      style: TextStyle(color: secondaryColor, fontSize: 14),
                    )
                  ],
                ))
          ]),
        )
      ]),
    );
  }
}
