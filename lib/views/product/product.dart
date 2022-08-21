import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
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
              child: Column(children: [
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
                              )
                            ],
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
                    top: BorderSide(color: Colors.grey.shade300, width: 3),
                    bottom: BorderSide(color: Colors.grey.shade300, width: 3),
                  )),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    splashColor: secondaryColor,
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
                        Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "Hitam",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 12),
                              ),
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(
                                    color: secondaryColor, width: 1)),
                              ),
                            )
                          ],
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "XL",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 12),
                                ),
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: secondaryColor, width: 1)),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "XL",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 12),
                                ),
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: secondaryColor, width: 1)),
                                ),
                              ),
                            ])
                      ]),
                    )
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 3),
                      bottom: BorderSide(color: Colors.grey.shade300, width: 3),
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
                                width: 150,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                PhosphorIcons.storefrontBold,
                                                size: 25,
                                                color: secondaryColor,
                                              ),
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
                                                          color: secondaryColor,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text("Kota Cirebon",
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          color: Colors.black)),
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
                                                        fontSize: 12,
                                                        color: secondaryColor)),
                                                TextSpan(
                                                    text: "Produk",
                                                    style: TextStyle(
                                                        fontSize: 12,
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
                                                        fontSize: 12,
                                                        color: secondaryColor)),
                                                TextSpan(
                                                    text: "Produk",
                                                    style: TextStyle(
                                                        fontSize: 12,
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
                        ]))
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 5,
          //     spreadRadius: 5,
          //   ),
          // ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: Icon(
              PhosphorIcons.chat,
              color: secondaryColor,
            ),
            onPressed: () {},
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
            onPressed: () {},
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
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
            ),
            onPressed: () {},
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
    );
  }
}
