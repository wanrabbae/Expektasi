import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../core/utils/constant.dart';

class KategoriView extends StatefulWidget {
  const KategoriView({Key? key}) : super(key: key);

  @override
  State<KategoriView> createState() => _KategoriViewState();
}

class _KategoriViewState extends State<KategoriView> {
  Color secondaryColor = Color(0xffFDD100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar4(title: 'Lain-lain'),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 50),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              itemCount: listCategory.length,
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (categories, index) {
                var data = listCategory[index];
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
                        margin: EdgeInsets.only(bottom: 6),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xFFF4F4F4),
                        ),
                        child: Icon(
                          data['icon'],
                          size: 30,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        data['name'].toString().toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 205,
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: listProducts.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.75),
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
          Container(
            width: double.infinity,
            height: 205,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
              itemCount: listProducts.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.75),
              itemBuilder: (products, index) {
                var data = listProducts[index];
                return InkWell(
                  splashColor: secondaryColor.withAlpha(30),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => (data['link'])));
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
          )
        ],
      )),
    );
  }
}
