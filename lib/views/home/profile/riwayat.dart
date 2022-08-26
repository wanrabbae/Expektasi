import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RiwayatView extends StatefulWidget {
  const RiwayatView({Key? key}) : super(key: key);

  @override
  State<RiwayatView> createState() => _RiwayatViewState();
}

class _RiwayatViewState extends State<RiwayatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Riwayat',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 1000,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: listProducts.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.75,
                ),
                itemBuilder: (products, index) {
                  var data = listProducts[index];
                  return InkWell(
                    splashColor: secondaryColor.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (data['link'])));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          // padding:
                          //     EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Column(children: [
                            Image.network(
                              data['image'],
                              fit: BoxFit.contain,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      data['name'].toString().toUpperCase(),
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 8.5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        data['price'],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: secondaryColor, fontSize: 9),
                                      ))
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Center(
            //   child: Icon(
            //     PhosphorIcons.clockCounterClockwiseBold,
            //     size: 200,
            //     color: secondaryColor,
            //   ),
            // ),
            // Center(child: Text('Belum ada apa-apa nih \n mulai belanja yuk')),
          ],
        )));
  }
}
