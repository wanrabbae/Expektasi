import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/recieved_message.dart';
import 'package:expektasi/core/utils/send_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChattingView extends StatefulWidget {
  const ChattingView({Key? key}) : super(key: key);

  @override
  State<ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<ChattingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: secondaryColor,
          title: Container(
            width: 250,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(

                    //       color: Color.fromRGBO(0, 0, 0, 0.1),
                    //       blurRadius: 2,
                    //       offset: Offset(0, 7),
                    //     ),
                    //   ],
                    // ),
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/1008921423915532368/1010782811873099816/Group_44.png',
                      width: 50,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Admin Ekspektasi",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text("Aktif 7 menit yang lalu",
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 9))
                    ],
                  )
                ]),
          )),
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(top: 2, bottom: 2, right: 15, left: 15),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: Text("17-07-2022",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  )),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          // RecievedMsg()

          SentMessage(message: "Moshimoshh"),
          RecievedMsg(message: "Minnasan Koni jiwaa")
        ]),
      )),
      bottomNavigationBar: BottomAppBar(
          color: secondaryColor,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        PhosphorIcons.plusCircle,
                        size: 25,
                        color: Colors.white,
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        style: TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Username",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        PhosphorIcons.smileyStickerFill,
                        size: 25,
                        color: Colors.white,
                      )),
                ]),
          )),
    );
  }
}
