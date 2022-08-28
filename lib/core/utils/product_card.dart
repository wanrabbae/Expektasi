import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

Widget ProductOrderPendingCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Menunggu Pembayaran",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductOrderAcceptedCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Perlu Dikirim",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          PhosphorIcons.infoBold,
                          size: 12,
                          color: secondaryColor,
                        ),
                      )),
                      TextSpan(
                          text: "Produk akan dikirimkan sebelum 31-07-2022",
                          style: TextStyle(fontSize: 7, color: Colors.black)),
                    ])),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(5))),
                        onPressed: () {},
                        child: Text(
                          "Kabari Penjual",
                          style: TextStyle(fontSize: 11),
                        ))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductOrderOTWCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Dalam Perjalanan",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          PhosphorIcons.infoBold,
                          size: 12,
                          color: secondaryColor,
                        ),
                      )),
                      TextSpan(
                          text: "Konfirmasi terima produk sebelum 31-07-2022",
                          style: TextStyle(fontSize: 7, color: Colors.black)),
                    ])),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(5))),
                        onPressed: () {},
                        child: Text(
                          "Pesanan Diterima",
                          style: TextStyle(fontSize: 11),
                        ))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductOrderFinishedCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Selesai",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          PhosphorIcons.infoBold,
                          size: 12,
                          color: secondaryColor,
                        ),
                      )),
                      TextSpan(
                          text: "Nilai produk sebelum 31-07-2022",
                          style: TextStyle(fontSize: 7, color: Colors.black)),
                    ])),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(5))),
                        onPressed: () {},
                        child: Text(
                          "Nilai",
                          style: TextStyle(fontSize: 11),
                        ))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductOrderCancelledCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Dibatalkan",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          PhosphorIcons.infoBold,
                          size: 12,
                          color: secondaryColor,
                        ),
                      )),
                      TextSpan(
                          text: "Nilai produk sebelum 31-07-2022",
                          style: TextStyle(fontSize: 7, color: Colors.black)),
                    ])),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(5))),
                        onPressed: () {},
                        child: Text(
                          "Beri Alasan",
                          style: TextStyle(fontSize: 11),
                        ))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductOrderRefundCard() {
  return Container(
    child: SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(
                      PhosphorIcons.storefrontBold,
                      size: 12,
                    ),
                  )),
                  TextSpan(
                    text: "John Shop",
                    style: TextStyle(fontSize: 9, color: Colors.black),
                  ),
                ])),
                Text(
                  "Pengembalian",
                  style: TextStyle(fontSize: 8, color: secondaryColor),
                )
              ],
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
                        "Ukuran L",
                        style:
                            TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                                  fontSize: 12, color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1 Produk",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 73, 73, 73))),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Total Pesanan= ",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 73, 73, 73))),
                      TextSpan(
                          text: "Rp95.500",
                          style: TextStyle(fontSize: 11, color: secondaryColor))
                    ]))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 1))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                          child: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          PhosphorIcons.infoBold,
                          size: 12,
                          color: secondaryColor,
                        ),
                      )),
                      TextSpan(
                          text: "Konfirmasi terima produk sebelum 31-07-2022",
                          style: TextStyle(fontSize: 7, color: Colors.black)),
                    ])),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            elevation: MaterialStateProperty.all(0),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(5))),
                        onPressed: () {},
                        child: Text(
                          "Kabari Penjual",
                          style: TextStyle(fontSize: 11),
                        ))
                  ]),
            )
          ]),
        ),
      ]),
    ),
  );
}

Widget ProductCartAll(count, setState) {
  return SingleChildScrollView(
    child: Container(
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
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade400),
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
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 10)),
                            Text(
                              "${count}",
                              style: TextStyle(fontSize: 15),
                            ),
                            Padding(padding: EdgeInsets.only(right: 10)),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
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
  );
}

Widget ProductFavouriteAll() {
  return SingleChildScrollView(
    child: Container(
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
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SWEATER PRIA - ESOBOY\n HOODIE JUMPER",
                      style: TextStyle(fontSize: 12),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                    Text(
                      "Fashion",
                      style:
                          TextStyle(fontSize: 9, color: Colors.grey.shade400),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                    Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Icon(PhosphorIcons.starFill,
                                size: 15, color: secondaryColor),
                          )),
                          TextSpan(
                              text: "4.9",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 12))
                        ])),
                        Text(" | ",
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 12)),
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Icon(PhosphorIcons.mapPin,
                                size: 15, color: Colors.grey.shade400),
                          )),
                          TextSpan(
                              text: "100km",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 12))
                        ])),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 3)),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: secondaryColor, width: 1.5),
                            ),
                            child: Text("Diskon 60%",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10))),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
                        Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: secondaryColor, width: 1.5),
                            ),
                            child: Text("Gratis Ongkir",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10))),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Icon(
              PhosphorIcons.heartFill,
              size: 25,
              color: secondaryColor,
            )
          ],
        )
      ]),
    ),
  );
}
