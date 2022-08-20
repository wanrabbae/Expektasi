import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: double.infinity,
              height: 250.0,
              child: Image.network(
                'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Column(children: [
                Text(
                  "SWEATER PRIA - ESOBOY HOODIE JUMPER",
                  style: TextStyle(fontSize: 15),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Rp85.500",
                    style: TextStyle(color: secondaryColor, fontSize: 13),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Rp100.000",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        decoration: TextDecoration.lineThrough),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                PhosphorIcons.starFill,
                                color: secondaryColor,
                                size: 15,
                              ),
                              Icon(
                                PhosphorIcons.starFill,
                                color: secondaryColor,
                                size: 15,
                              ),
                              Icon(
                                PhosphorIcons.starFill,
                                color: secondaryColor,
                                size: 15,
                              ),
                              Icon(
                                PhosphorIcons.starFill,
                                color: secondaryColor,
                                size: 15,
                              ),
                              Icon(
                                PhosphorIcons.starFill,
                                color: secondaryColor,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        Text(
                          "4.8 | ",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          "217 Terjual",
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    PhosphorIcons.heartBold,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                              IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(
                                    PhosphorIcons.shareBold,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ],
                          ),
                        )
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Colors.grey.shade300, width: 3),
                    bottom: BorderSide(color: Colors.grey.shade300, width: 3),
                  )),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    splashColor: secondaryColor,
                    onTap: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Container(
                                    padding: EdgeInsets.only(right: 7),
                                    child: Icon(
                                      PhosphorIcons.walletFill,
                                      size: 20,
                                      color: secondaryColor,
                                    ))),
                            TextSpan(
                                text: "DompetKu",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                          ])),
                          Icon(PhosphorIcons.caretRightBold, size: 15)
                        ]),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 5,
          //     spreadRadius: 5,
          //   ),
          // ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: Icon(
              PhosphorIcons.chat,
              color: secondaryColor,
            ),
            onPressed: () {},
            iconSize: 40,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
              color: Colors.black.withOpacity(0.1),
              width: 1,
            ))),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: secondaryColor,
            ),
            onPressed: () {},
            iconSize: 40,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
              color: Colors.black.withOpacity(0.1),
              width: 1,
            ))),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(secondaryColor),
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
            ),
            onPressed: () {},
            child: Text(
              "Beli Sekarang",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
