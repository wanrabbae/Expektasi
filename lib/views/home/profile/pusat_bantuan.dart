import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PusatBantuanView extends StatefulWidget {
  const PusatBantuanView({Key? key}) : super(key: key);

  @override
  State<PusatBantuanView> createState() => _PusatBantuanViewState();
}

class _PusatBantuanViewState extends State<PusatBantuanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Pusat Bantuan',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(fontSize: 11),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: secondaryColor,
                ),
                hintText: 'Mau perlu apa?',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "FAQ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Cara mendaftar dengan akun expektasi",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Metode pembayaran ada apa saja?",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Bagaimana menghubungi customer service?",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "HUBUNGI KAMI",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(style: TextStyle(fontSize: 15), children: [
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      PhosphorIcons.envelope,
                      size: 20,
                      color: secondaryColor,
                    )),
                TextSpan(
                    text: 'Email (expektasiofc@gmail.com)',
                    style: TextStyle(color: Colors.black))
              ])),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(style: TextStyle(fontSize: 15), children: [
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      PhosphorIcons.phoneCall,
                      size: 20,
                      color: secondaryColor,
                    )),
                TextSpan(
                    text: 'Telepon (+62 xxx xxxx xxx)',
                    style: TextStyle(color: Colors.black))
              ])),
            )
          ],
        ),
      ),
    );
  }
}
