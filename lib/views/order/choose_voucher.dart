import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VoucherChoose extends StatefulWidget {
  const VoucherChoose({Key? key}) : super(key: key);

  @override
  State<VoucherChoose> createState() => _VoucherChooseState();
}

class _VoucherChooseState extends State<VoucherChoose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          "Pilih Voucher",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: listVouchers.map((data) {
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(7)),
                  child: InkWell(
                      onTap: () {},
                      splashColor: secondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: Image.network(
                              data["image"],
                              fit: BoxFit.fill,
                            ),
                          )),
                          Padding(padding: EdgeInsets.only(right: 4)),
                          Expanded(
                              flex: 2,
                              child: Container(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    data["name"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Hingga ${data["date"]}",
                                    style: TextStyle(fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ))),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                EdgeInsets.symmetric(
                                                    horizontal: 5, vertical: 2),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      secondaryColor)),
                                          child: Text(
                                            "Pilih",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11),
                                          ))
                                    ],
                                  )))
                        ],
                      )));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
