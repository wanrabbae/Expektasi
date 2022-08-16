import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/dompetasi/dompetasi1.dart';
import 'package:expektasi/views/home/order.dart';
import 'package:expektasi/views/home/profile/edit_profile.dart';
import 'package:expektasi/views/home/profile/pusat_bantuan.dart';
import 'package:expektasi/views/home/profile/riwayat.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                PhosphorIcons.signOutBold,
                size: 32.0,
                color: secondaryColor,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(children: [
          Image.asset(
            'images/3.png',
            width: 100,
          ),
          // Nama user
          Text(
            'asep123',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Text new member
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(top: 2, bottom: 2, right: 15, left: 15),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Text("New Member",
                style: TextStyle(
                  fontSize: 13,
                  backgroundColor: Color(117438),
                  color: Colors.white,
                )),
          ),

          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 199, 0, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Column(children: [
                  Card(
                      elevation: 0,
                      child: InkWell(
                        splashColor: secondaryColor.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (OrderView(0))));
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: SizedBox(
                                height: 70,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 199, 0, 0.15),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        PhosphorIcons.bicycleFill,
                                        size: 25.0,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Pesanan',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text('Riwayat pesananmu',
                                                style: TextStyle(fontSize: 10)),
                                          ]),
                                    )
                                  ],
                                ))),
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: secondaryColor.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (OrderView(0))));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  PhosphorIcons.wallet,
                                  size: 25.0,
                                  color: secondaryColor,
                                ),
                                Text(
                                  'Menunggu \n Pembayaran',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: secondaryColor.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (OrderView(1))));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  PhosphorIcons.packageFill,
                                  size: 25.0,
                                  color: secondaryColor,
                                ),
                                Text(
                                  'Perlu \n Dikirim',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: secondaryColor.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (OrderView(2))));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  PhosphorIcons.truckFill,
                                  size: 25.0,
                                  color: secondaryColor,
                                ),
                                Text(
                                  'Dalam \n Perjalanan',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: secondaryColor.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (OrderView(3))));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  PhosphorIcons.star,
                                  size: 25.0,
                                  color: secondaryColor,
                                ),
                                Text(
                                  'Ulasan',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Column(children: [
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (DompetasiView1())));
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.walletFill,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Dompetasi',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('Saldo akunmu',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (EditProfileView())));
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.penFill,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Edit Profil',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  'Perbarui atau ubah profilmu',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.shoppingBagFill,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Mulai Jual',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  'Buat bisnismu berkembang sekarang juga!',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.monitorPlay,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Voucher',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  'Voucher punyamu yang siap kamu gunakan',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (RiwayatView())));
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons
                                              .clockCounterClockwiseBold,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Riwayat',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('Riwayat pencarianmu',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.heartFill,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Favorit',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('Daftar kaos kesukaanmu',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                    Card(
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 55),
                        child: InkWell(
                          splashColor: secondaryColor.withAlpha(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (PusatBantuanView())));
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height: 70,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 199, 0, 0.15),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          PhosphorIcons.questionFill,
                                          size: 25.0,
                                          color: secondaryColor,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Pusat Bantuan',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                  'Apabila kamu ada keluhan, bisa disini ya',
                                                  style:
                                                      TextStyle(fontSize: 10)),
                                            ]),
                                      )
                                    ],
                                  ))),
                        )),
                  ])
                ]),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
