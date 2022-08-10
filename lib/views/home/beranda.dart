import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/home/login.dart';
import 'package:expektasi/views/home/register.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
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
                height: 1000,
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
                                size: 30,
                                color: Color(0xffEB9007),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Saldo',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text('Rp.', style: TextStyle(fontSize: 10)),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.scan,
                                    size: 30,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Bayar",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.coins,
                                    size: 30,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Text(
                                      "Top Up",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.arrowsLeftRight,
                                    size: 30,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Text(
                                      "Transfer",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ), // <-- Text
                                ],
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
                            crossAxisCount: 1, childAspectRatio: 1.1),
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
                                    size: 30,
                                    color: secondaryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    data['name'].toString(),
                                    style: TextStyle(fontSize: 12),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (Register())));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(0),
                                  ),
                                  color: Color(0xffEB9007)),
                              child: Text(
                                'Buat Akun',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                            splashColor: secondaryColor,
                            highlightColor: secondaryColor,
                          ),
                          // FlatButton(
                          //     onPressed: (){},
                          //     child: Ink(
                          //       padding: EdgeInsets.symmetric(
                          //         vertical: 15,
                          //         horizontal: 30
                          //       ),
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(10),
                          //           topRight: Radius.circular(10),
                          //           bottomLeft: Radius.circular(10),
                          //           bottomRight: Radius.circular(0),
                          //         ),
                          //         color: Color(0xffEB9007)
                          //       ),
                          //       child: Text(
                          //         'Buat Akun',
                          //         style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 10
                          //         ),
                          //       ),
                          //     )
                          // ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => (Login())));
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.white),
                                child: Text('Login',
                                    style: TextStyle(
                                        color: Color(0xffEB9007),
                                        fontSize: 10)),
                              ))
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
