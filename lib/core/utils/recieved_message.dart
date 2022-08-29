import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecievedMsg extends StatefulWidget {
  const RecievedMsg({Key? key}) : super(key: key);

  @override
  State<RecievedMsg> createState() => _RecievedMsgState();
}

class _RecievedMsgState extends State<RecievedMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: 50,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(7)),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, Terima kasih sudah daftar aplikas kami. Kami tunggu pesanan anda.",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
              Text(
                "10.02 AM",
                style: TextStyle(color: Colors.white, fontSize: 9),
                textAlign: TextAlign.right,
              ),
            ]),
      ),
    );
  }
}
