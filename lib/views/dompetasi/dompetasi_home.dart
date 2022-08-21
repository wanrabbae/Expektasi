import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/dompetasi/dompetasi_isi_saldo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DompetasiHome extends StatefulWidget {
  const DompetasiHome({Key? key}) : super(key: key);

  @override
  State<DompetasiHome> createState() => _DompetasiHomeState();
}

class _DompetasiHomeState extends State<DompetasiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(style: TextStyle(fontSize: 35), children: [
              WidgetSpan(
                child: Image.network(
                  'https://cdn.discordapp.com/attachments/1008921423915532368/1008921505024974918/fontisto_wallet.png',
                  width: 50,
                ),
              ),
              TextSpan(text: 'Dom', style: TextStyle(color: Colors.black)),
              TextSpan(text: 'petasi', style: TextStyle(color: secondaryColor)),
            ])),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 40),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 3, color: secondaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    padding: EdgeInsets.only(
                        right: 50, top: 10, bottom: 10, left: 5),
                    child: Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.network(
                          'https://cdn.discordapp.com/attachments/1008921423915532368/1008921505024974918/fontisto_wallet.png',
                          width: 20,
                        ),
                        // Icon(
                        //   PhosphorIcons.wallet,
                        //   size: 25,
                        //   color: Color(0xffEB9007),
                        // ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
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
                  ),
                  Material(
                    color: secondaryColor,
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
                              color: Colors.white,
                            ), // <-- Icon
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                "Bayar",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: secondaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    (DompetasiIsiSaldoView())));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              PhosphorIcons.coins,
                              size: 25,
                              color: Colors.white,
                            ), // <-- Icon
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                "Top Up",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: secondaryColor,
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
                              color: Colors.white,
                            ), // <-- Icon
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                "Transfer",
                                style:
                                    TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: RichText(
                text: TextSpan(style: TextStyle(fontSize: 15), children: [
              WidgetSpan(
                  child: Icon(
                PhosphorIcons.clockCounterClockwiseFill,
                size: 20,
                color: secondaryColor,
              )),
              TextSpan(text: 'Riwayat', style: TextStyle(color: Colors.black)),
            ])),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    PhosphorIcons.clockCounterClockwiseFill,
                    size: 200,
                    color: secondaryColor,
                  ),
                ),
                Center(
                    child: Text('Belum ada apa-apa nih \n mulai belanja yuk')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
