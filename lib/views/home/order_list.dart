import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/core/utils/product_card.dart';
import 'package:expektasi/views/home/profile/profile.dart';
import 'package:expektasi/views/order/nilai_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OrderViewList extends StatefulWidget {
  int selectedPage;
  OrderViewList(this.selectedPage);

  @override
  State<OrderViewList> createState() => _OrderViewListState();
}

class _OrderViewListState extends State<OrderViewList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: widget.selectedPage,
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                // goPush(ProfileView(), context);
                Navigator.pop(context);
              },
            ),
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            elevation: 2,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: secondaryColor,
              indicatorWeight: 5,
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Menunggu Pembayaran'),
                Tab(text: 'Perlu Dikirim'),
                Tab(text: 'Dalam Perjalanan'),
                Tab(text: 'Selesai'),
                Tab(text: 'Dibatalkan'),
                Tab(text: 'Pengembalian'),
              ],
            ),
            title: Text(
              'Pesanan',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductOrderPendingCard(),
              ProductOrderAcceptedCard(),
              ProductOrderOTWCard(),
              Container(
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                  style: TextStyle(
                                      fontSize: 9, color: Colors.black),
                                ),
                              ])),
                              Text(
                                "Selesai",
                                style: TextStyle(
                                    fontSize: 8, color: secondaryColor),
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
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SWEATER PRIA - ESOBOY\n HOODIE JUMPER",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3)),
                                    Text(
                                      "Ukuran L",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.grey.shade400),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3)),
                                    Container(
                                      width: 150,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Rp85.500",
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.grey.shade400),
                                          ),
                                          Text(
                                            "x1",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey.shade400),
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
                                    top: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 1))),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("1 Produk",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color:
                                              Color.fromARGB(255, 73, 73, 73))),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "Total Pesanan= ",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromARGB(
                                                255, 73, 73, 73))),
                                    TextSpan(
                                        text: "Rp95.500",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: secondaryColor))
                                  ]))
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey.shade300,
                                        width: 1))),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.black)),
                                  ])),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  secondaryColor),
                                          elevation:
                                              MaterialStateProperty.all(0),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(5))),
                                      onPressed: () {
                                        goPush(NilaiProductView(), context);
                                      },
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
              ProductOrderCancelledCard(),
              ProductOrderRefundCard()
            ],
          ),
        ),
      ),
    );
  }
}
