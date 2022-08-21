import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/chat/chat.dart';
import 'package:expektasi/views/home/login.dart';
import 'package:expektasi/views/home/notification.dart';
import 'package:expektasi/views/home/register/register.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/utils/constant.dart';
import '../../core/utils/navigator_helper.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  @override
  State<BerandaView> createState() => _BerandaViewState();
}

class _BerandaViewState extends State<BerandaView> {
  // TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => (NotifView())));
          },
          icon: Icon(
            PhosphorIcons.bellSimple,
            color: Colors.white,
            size: 20,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => (ChatView())));
          },
          icon: Icon(PhosphorIcons.chats, color: Colors.white, size: 20),
        ),
      ]),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                  ),
                  child: Image.network(
                    'https://cdn.discordapp.com/attachments/990841636386897971/1006062749547237506/banner_rev1_1_1.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
                height: 1250,
                transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0,
                        offset: Offset(0.0, -5.0), //(x,y)
                        blurRadius: 15,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 3, color: secondaryColor)),
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                PhosphorIcons.wallet,
                                size: 25,
                                color: Color(0xffEB9007),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Saldo',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text('Rp.', style: TextStyle(fontSize: 8)),
                                ],
                              ),
                            ],
                          )),
                          // FlatButton.icon(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.scan,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     ),
                          //   label: Text(
                          //     'Bayar'
                          //   ),
                          // ),
                          Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      PhosphorIcons.scan,
                                      size: 25,
                                      color: Color(0xffEB9007),
                                    ), // <-- Icon
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Bayar",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      PhosphorIcons.coins,
                                      size: 25,
                                      color: Color(0xffEB9007),
                                    ), // <-- Icon
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Top Up",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      PhosphorIcons.arrowsLeftRight,
                                      size: 25,
                                      color: Color(0xffEB9007),
                                    ), // <-- Icon
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Transfer",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ), // <-- Text
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.wallet,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     )
                          // ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.scan,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     )
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listMenu.length,
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, childAspectRatio: 1.2),
                        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //   crossAxisCount: 5,
                        //   crossAxisSpacing: 5.0,
                        //   mainAxisSpacing: 5.0,
                        // ),
                        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        //   maxCrossAxisExtent: 4
                        // ),
                        itemBuilder: (context, index) {
                          var data = listMenu[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (data['link'])));
                              //   goPush(data['link']);
                            },
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment:
                              // MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                    10,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFF4F4F4),
                                  ),
                                  child: Icon(
                                    data['icon'],
                                    size: 25,
                                    color: secondaryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    data['name'].toString(),
                                    style: TextStyle(fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // InkWell(
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => (Register())));
                          //   },
                          //   child: Container(
                          //     padding: EdgeInsets.symmetric(
                          //         vertical: 15, horizontal: 30),
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(10),
                          //           topRight: Radius.circular(10),
                          //           bottomLeft: Radius.circular(10),
                          //           bottomRight: Radius.circular(0),
                          //         ),
                          //         color: Color(0xffEB9007)),
                          //     child: Text(
                          //       'Buat Akun',
                          //       style: TextStyle(
                          //           color: Colors.white, fontSize: 10),
                          //     ),
                          //   ),
                          //   splashColor: secondaryColor,
                          //   highlightColor: secondaryColor,
                          // ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (Register())));
                            },
                            color: Color(0xffEB9007),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(0),
                            )),
                            child: Text(
                              'Buat Akun',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (Login())));
                            },
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 35),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(10),
                            )),
                            child: Text(
                              'Masuk',
                              style: TextStyle(
                                  color: Color(0xffEB9007), fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 60),
                      // padding: EdgeInsets.symmetric(vertical: ),
                      height: 800,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.star_fill,
                                color: secondaryColor,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              Text(
                                'Produk Pilihan',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 205,
                            margin: EdgeInsets.symmetric(vertical: 25),
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
                                              bottomLeft: Radius.circular(7),
                                              bottomRight: Radius.circular(7)),
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
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.star_fill,
                                color: secondaryColor,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              )),
                              Text(
                                'Brand Populer',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: listBrands.length,
                              shrinkWrap: true,
                              physics: AlwaysScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1, childAspectRatio: 1.2),
                              itemBuilder: (context, index) {
                                var data = listBrands[index];
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (data['link'])));
                                    //   goPush(data['link']);
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(
                                            10,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Image.network(
                                            data['image'],
                                            width: 50,
                                          )),
                                      Text(
                                        data['name'].toString(),
                                        style: TextStyle(fontSize: 10),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          // ======= PRODUK TERBARU DAN TERLARIS =======
                          DefaultTabController(
                              length: 2, // length of tabs
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Container(
                                      child: TabBar(
                                        indicatorColor: secondaryColor,
                                        labelColor: secondaryColor,
                                        indicatorWeight: 3,
                                        unselectedLabelColor: Colors.black,
                                        tabs: [
                                          Tab(text: 'Terbaru'),
                                          Tab(text: 'Terlaris'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 220, //height of TabBarView
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color: Colors.grey,
                                                    width: 0.5))),
                                        child: TabBarView(children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            height: 210,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 25),
                                            child: GridView.builder(
                                              itemCount: listProducts.length,
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              physics:
                                                  AlwaysScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                      childAspectRatio: 1.75),
                                              itemBuilder: (products, index) {
                                                var data = listProducts[index];
                                                return InkWell(
                                                  splashColor: secondaryColor
                                                      .withAlpha(30),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                (data[
                                                                    'link'])));
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(0),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          7),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          7)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0.1),
                                                              blurRadius: 10,
                                                              offset:
                                                                  Offset(0, 3),
                                                            ),
                                                          ],
                                                        ),
                                                        // padding:
                                                        //     EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                        child: Column(
                                                            children: [
                                                              Image.network(
                                                                data['image'],
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        data['name']
                                                                            .toString()
                                                                            .toUpperCase(),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              8.5,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                4),
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                10),
                                                                        child:
                                                                            Text(
                                                                          data[
                                                                              'price'],
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
                                          Container(
                                            width: double.infinity,
                                            height: 220,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 25),
                                            child: GridView.builder(
                                              itemCount: listProducts.length,
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              physics:
                                                  AlwaysScrollableScrollPhysics(),
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                      childAspectRatio: 1.75),
                                              itemBuilder: (products, index) {
                                                var data = listProducts[index];
                                                return InkWell(
                                                  splashColor: secondaryColor
                                                      .withAlpha(30),
                                                  onTap: () {
                                                    // Navigator.push(context,
                                                    //     MaterialPageRoute(builder: (context) => (data['link'])));
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(0),
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          7),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          7)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0.1),
                                                              blurRadius: 10,
                                                              offset:
                                                                  Offset(0, 3),
                                                            ),
                                                          ],
                                                        ),
                                                        // padding:
                                                        //     EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                                        child: Column(
                                                            children: [
                                                              Image.network(
                                                                data['image'],
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.only(
                                                                          bottom:
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        data['name']
                                                                            .toString()
                                                                            .toUpperCase(),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              8.5,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                4),
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                10),
                                                                        child:
                                                                            Text(
                                                                          data[
                                                                              'price'],
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
                                        ]))
                                  ])),

                          // Container(
                          //   width: double.infinity,
                          //   child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.stretch,
                          //       children: <Widget>[
                          //         // SizedBox(height: 10.0),
                          //         ]),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
