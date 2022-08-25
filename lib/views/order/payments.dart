import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:expektasi/views/order/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({Key? key}) : super(key: key);

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView> {
  bool isActive = false;

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
        title: Text(
          'Metode Pembayaran',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Text(
                "GARANSI PEMBAYARAN",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listPayment.length,
                  itemBuilder: (context, index) {
                    var data = listPayment[index];
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.shade300, width: 1))),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isActive = !isActive;
                          });
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network(
                                data['image'],
                                width: 60,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data['name'],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    data['subName'],
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              )
                            ]),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
        onPressed: () {
          goRemove(OrderView1(), context);
        },
        child: Text("KONFIRMASI"),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(secondaryColor),
            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
      )),
    );
  }
}
