import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/dompetasi/dompetasi1.dart';
import 'package:expektasi/views/home/cart.dart';
import 'package:expektasi/views/home/login.dart';
import 'package:expektasi/views/home/order_list.dart';
import 'package:expektasi/views/home/profile/edit_profile.dart';
import 'package:expektasi/views/home/profile/pusat_bantuan.dart';
import 'package:expektasi/views/home/profile/riwayat.dart';
import 'package:expektasi/views/home/register/register.dart';
import 'package:expektasi/views/mulai_jual/mulai_jual_home.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:expektasi/views/vouchers/voucher_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool user = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: const Text(
                        'Apakah anda ingin LogOut?',
                        textAlign: TextAlign.center,
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Ya'),
                          child: const Text(
                            'Ya',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(secondaryColor),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(10.0))),
                          onPressed: () => Navigator.pop(context, 'Tidak'),
                          child: const Text(
                            'Tidak',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
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
          user
              ? Column(
                  children: [
                    Image.asset(
                      'images/3.png',
                      width: 100,
                    ),
                    Text(
                      'asep123',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.only(
                          top: 2, bottom: 2, right: 15, left: 15),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("New Member",
                          style: TextStyle(
                            fontSize: 13,
                            backgroundColor: Color(117438),
                            color: Colors.white,
                          )),
                    ),
                  ],
                )
              : Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Register())));
                        },
                        color: Color(0xffEB9007),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                        )),
                        child: Text(
                          'Buat Akun',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Login())));
                        },
                        color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(10),
                        )),
                        child: Text(
                          'Masuk',
                          style:
                              TextStyle(color: Color(0xffEB9007), fontSize: 10),
                        ),
                      ),
                    ],
                  ),
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
                                  builder: (context) => (OrderViewList(0))));
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
                                      builder: (context) =>
                                          (OrderViewList(0))));
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
                                      builder: (context) =>
                                          (OrderViewList(1))));
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
                                      builder: (context) =>
                                          (OrderViewList(2))));
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
                                      builder: (context) =>
                                          (OrderViewList(3))));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MulaiJual()));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (VoucherView())));
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (CartView(1))));
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
