import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DompetasiIsiSaldoView extends StatefulWidget {
  const DompetasiIsiSaldoView({Key? key}) : super(key: key);

  @override
  State<DompetasiIsiSaldoView> createState() => _DompetasiIsiSaldoViewState();
}

class _DompetasiIsiSaldoViewState extends State<DompetasiIsiSaldoView> {
  bool _filled = false;

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
            child: Icon(
              PhosphorIcons.wallet,
              size: 70,
              color: Color(0xffEB9007),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(style: TextStyle(fontSize: 35), children: [
              TextSpan(text: 'Isi', style: TextStyle(color: secondaryColor)),
              TextSpan(text: 'Saldo', style: TextStyle(color: Colors.black)),
            ])),
          ),
          Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed:
                          // !_filled
                          //     ? null
                          //     :
                          () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => (Registered())));
                      },
                      child: Text(
                        "Indomaret /i.Saku",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor:
                            _filled ? secondaryColor : Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed:
                          // !_filled
                          //     ? null
                          //     :
                          () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => (Registered())));
                      },
                      child: Text(
                        "Alfamart / Alfamidi / Dan+Dan",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor:
                            _filled ? secondaryColor : Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
