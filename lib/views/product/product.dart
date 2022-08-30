import 'dart:math';

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/views/home/cart.dart';
import 'package:expektasi/views/home/chat/chatting.dart';
import 'package:expektasi/views/order/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  Widget stars() {
    return Row(
      children: [
        Icon(
          PhosphorIcons.starFill,
          color: secondaryColor,
          size: 15,
        ),
        Icon(
          PhosphorIcons.starFill,
          color: secondaryColor,
          size: 15,
        ),
        Icon(
          PhosphorIcons.starFill,
          color: secondaryColor,
          size: 15,
        ),
        Icon(
          PhosphorIcons.starFill,
          color: secondaryColor,
          size: 15,
        ),
        Icon(
          PhosphorIcons.starFill,
          color: secondaryColor,
          size: 15,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: double.infinity,
              height: 250.0,
              child: Image.network(
                'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "SWEATER PRIA - ESOBOY HOODIE JUMPER",
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Rp85.500",
                      style: TextStyle(color: secondaryColor, fontSize: 13),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Rp100.000",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          decoration: TextDecoration.lineThrough),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [stars()],
                            ),
                          ),
                          Text(
                            "4.8 | ",
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            "217 Terjual",
                            style: TextStyle(fontSize: 13),
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(
                                      PhosphorIcons.heartBold,
                                      color: Colors.black,
                                      size: 20,
                                    )),
                                IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(
                                      PhosphorIcons.shareBold,
                                      color: Colors.black,
                                      size: 20,
                                    )),
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey.shade200, width: 5),
                      bottom: BorderSide(color: Colors.grey.shade200, width: 5),
                    )),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              WidgetSpan(
                                  child: Container(
                                      padding: EdgeInsets.only(right: 7),
                                      child: Icon(
                                        PhosphorIcons.walletFill,
                                        size: 20,
                                        color: secondaryColor,
                                      ))),
                              TextSpan(
                                  text: "DompetKu",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ])),
                            Icon(PhosphorIcons.caretRightBold, size: 15)
                          ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: Column(children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Pilih Variasi",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        width: double.infinity,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Warna",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          CustomRadioButton(
                            buttonTextStyle: ButtonTextStyle(
                              selectedColor: Colors.white,
                              unSelectedColor: Colors.black,
                              textStyle: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            unSelectedColor: Colors.white,
                            buttonLables: [
                              "Merah",
                              "Kuning",
                              "Hijau",
                              "Biru",
                              "Ungu",
                              "Hitam",
                              "Putih",
                            ],
                            buttonValues: [
                              "Merah",
                              "Kuning",
                              "Hijau",
                              "Biru",
                              "Ungu",
                              "Hitam",
                              "Putih",
                            ],
                            radioButtonValue: (values) {
                              print(values);
                            },
                            spacing: 0,
                            horizontal: false,
                            enableButtonWrap: false,
                            autoWidth: true,
                            elevation: 0,
                            absoluteZeroSpacing: false,
                            selectedColor: secondaryColor,
                            selectedBorderColor: secondaryColor,
                            unSelectedBorderColor: secondaryColor,
                            padding: 5,
                          )
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        width: double.infinity,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Ukuran",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          CustomRadioButton(
                            buttonTextStyle: ButtonTextStyle(
                              selectedColor: Colors.white,
                              unSelectedColor: Colors.black,
                              textStyle: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            unSelectedColor: Colors.white,
                            buttonLables: [
                              "M",
                              "L",
                              "XL",
                              "XXL",
                            ],
                            buttonValues: [
                              "M",
                              "L",
                              "XL",
                              "XXL",
                            ],
                            radioButtonValue: (values) {
                              print(values);
                            },
                            spacing: 0,
                            horizontal: false,
                            enableButtonWrap: false,
                            autoWidth: true,
                            elevation: 0,
                            absoluteZeroSpacing: false,
                            selectedColor: secondaryColor,
                            selectedBorderColor: secondaryColor,
                            unSelectedBorderColor: secondaryColor,
                            padding: 5,
                          )
                        ]),
                      )
                    ]),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.grey.shade200, width: 5),
                        bottom:
                            BorderSide(color: Colors.grey.shade200, width: 5),
                      )),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Image.network(
                                      'https://cdn.discordapp.com/attachments/1008921423915532368/1010710138216271912/image_22.png'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 5)),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("John Shop",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text("Kota Cirebon",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey
                                                                .shade400)),
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                RichText(
                                                    text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "28 ",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              secondaryColor)),
                                                  TextSpan(
                                                      text: "Produk",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black)),
                                                ])),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 5)),
                                                RichText(
                                                    text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "4.7 ",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              secondaryColor)),
                                                  TextSpan(
                                                      text: "Produk",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.black)),
                                                ]))
                                              ]),
                                        )
                                      ]),
                                )
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Mampir",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: secondaryColor, width: 1.5)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ))),
                            ),
                          ])),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: Colors.grey.shade200, width: 5),
                    )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Produk lain dari Toko ini",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12),
                          ),
                          Container(
                            width: double.infinity,
                            height: 200,
                            margin: EdgeInsets.only(top: 10),
                            child: GridView.builder(
                              itemCount: listProducts.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: AlwaysScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      childAspectRatio: 1.75),
                              itemBuilder: (products, index) {
                                var data = listProducts[index];
                                return InkWell(
                                  splashColor: secondaryColor.withAlpha(30),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (data['link'])));
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(0),
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.1),
                                              blurRadius: 10,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        // padding:
                                        //     EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                        child: Column(children: [
                                          Image.network(
                                            data['image'],
                                            fit: BoxFit.contain,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 10),
                                                  child: Text(
                                                    data['name']
                                                        .toString()
                                                        .toUpperCase(),
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 8.5,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 4),
                                                    margin: EdgeInsets.only(
                                                        bottom: 10),
                                                    child: Text(
                                                      data['price'],
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color: secondaryColor,
                                                          fontSize: 9),
                                                    ))
                                              ],
                                            ),
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rincian Produk",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            bottom: 10,
                          )),
                          Container(
                              width: double.infinity,
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade200, width: 1),
                                bottom: BorderSide(
                                    color: Colors.grey.shade200, width: 1),
                              )),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stok",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      Text("205",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Panjang Lengan",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      Text("Lengan Panjang",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bahan",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      Text("Katun",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Negara Asal",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      Text("Indonesia",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dikirim dari",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 50)),
                                      Text(
                                          "KOTA JAKARTA\n SELATAN -\n KEBAYORAN LAMA,\n DKI  JAKARTA",
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10)),
                                ],
                              )),
                          // ListView.builder(itemBuilder: (context, index))
                          //     GridView.builder(
                          //   padding: EdgeInsets.only(top: 10),
                          //   physics: NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                          //   itemCount: listRincianProduct.length,
                          //   gridDelegate:
                          //       SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: 1,
                          //     childAspectRatio: 7,
                          //   ),
                          //   itemBuilder: (context, index) {
                          //     var data = listRincianProduct[index];
                          //     return Text("TEST");
                          //   },
                          // )),
                        ]),
                  ),
                  // Deskripsi Product
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '''BAHAN REAL 100%PLECEE Catton: kain paling unggul di banding jenis yang lainnya.... tekstur nya lembut , juga tidak membuat agan/sis kegerahan bila di pake siang ,dan sudah tentu hangat saat malam ..itulah sebab, hoodie/sweater kami mengunakan bahan plecee catton... SABLON PolyfleX -Jenis sablon dengan ketahanan yang sudah tidak di ragukan lagi -menjadikan gambar lebih rapih dan persisi JAHITAN -Dibuat oleh tenaga kerja yang ahli di bidangnya, dengan mengunakan pola jahitan overdek/interlock, sehingga menghasilkan produk BERKUALITAS premium ,cocok untuk pria ataupun wanita-SIZE CHARTPANJANG X LEBARS : (63 cm x 52 cm)M :(66 cm x 56cm)L : (70 cm x 58 cm)XL:(74 cm x 63 cm )XXL:(78 cm x 65 cm)NOTE:cantumkan warna,ukuran,Nama pemesan ,Alamat serta nomor telepon pada kolom pemesan....bila menginginkan warna di luar picture harap tanyakan dulu.Terimakasih.........selamat berbelanja''',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey.shade200, width: 5),
                    )),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Penilaian Produk",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              stars(),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Text("4.8/5 (189 Ulasan)",
                                  style: TextStyle(fontSize: 11)),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 15)),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    'https://cdn.discordapp.com/attachments/1008921423915532368/1011125369782407228/Ellipse_21.png',
                                    width: 50,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Maemunah123"),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      stars(),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Text(
                                        "Variasi: Hitam, L",
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Container(
                                        width: 250,
                                        child: Text(
                                          "Bagus banget hoodie nya sesuai dengan pesanan. Rekomended bangetttt pokoknya dah.",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade200,
                                                  width: 1)),
                                          child: Row(
                                            children: [
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10)),
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10)),
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Text("22-07-2022 12.00",
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10)),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    'https://cdn.discordapp.com/attachments/1008921423915532368/1011125369782407228/Ellipse_21.png',
                                    width: 50,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Maemunah123"),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      stars(),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Text(
                                        "Variasi: Hitam, L",
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Container(
                                        width: 250,
                                        child: Text(
                                          "Bagus banget hoodie nya sesuai dengan pesanan. Rekomended bangetttt pokoknya dah.",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade200,
                                                  width: 1)),
                                          child: Row(
                                            children: [
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10)),
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10)),
                                              Image.network(
                                                  "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                                                  width: 70),
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3)),
                                      Text("22-07-2022 12.00",
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10)),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                  color: Colors.grey.shade200, width: 1),
                              bottom: BorderSide(
                                  color: Colors.grey.shade200, width: 2),
                            )),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child:
                                // InkWell(
                                //   onTap: () {},
                                //   child: Text("Lihat Semua Ulasan (189) >"),
                                // )
                                ButtonTheme(
                              minWidth: double.infinity,
                              child: MaterialButton(
                                // side: Border(top: BorderSide(color: Colors.grey.shade400, width: 1))),
                                onPressed: () {},
                                child: Text('Lihat Semua Ulasan (189) >'),
                              ),
                            ),
                          )
                        ]),
                  ),
                  Text("-------- Kamu Mungkin Juga Suka --------",
                      style: TextStyle(color: Colors.grey)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: GridView.builder(
                      itemCount: listProducts.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (products, index) {
                        var data = listProducts[index];
                        return InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (data['link'])));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            // padding:
                            //     EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            child: Column(children: [
                              Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: Image.network(
                                  data['image'],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        data['name'].toString().toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 8.5,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4),
                                        // margin: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          data['price'],
                                          style: TextStyle(
                                              color: secondaryColor,
                                              fontSize: 9),
                                        ))
                                  ],
                                ),
                              )
                            ]),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(5),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              icon: Icon(
                PhosphorIcons.chat,
                color: secondaryColor,
              ),
              onPressed: () {
                goPush(ChattingView(), context);
              },
              iconSize: 40,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ))),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: secondaryColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (CartView(0))));
              },
              iconSize: 40,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ))),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(secondaryColor),
                padding: MaterialStateProperty.all(EdgeInsets.all(15)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (OrderView1())));
              },
              child: Text(
                "Beli Sekarang",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
