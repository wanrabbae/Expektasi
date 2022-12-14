import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:expektasi/views/home/beranda.dart';
import 'package:expektasi/views/home/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProductCategoriesView extends StatefulWidget {
  const ProductCategoriesView({Key? key}) : super(key: key);

  @override
  State<ProductCategoriesView> createState() => _ProductCategoriesViewState();
}

class _ProductCategoriesViewState extends State<ProductCategoriesView> {
  int _selectedIndex = 0;

  Widget borderCustom() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.grey.shade300, width: 6))));
  }

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      if (_selectedIndex == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => (CartView(1))));
      }
    }

    return Scaffold(
        endDrawer: Drawer(
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
                children: listCategory.map((data) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade300, width: 2))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          data['icon'],
                          size: 17,
                          color: secondaryColor,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        Container(
                          width: 150,
                          child: Text(
                            data["name"].toString().toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList()),
          ),
        ),
        appBar: customAppBar5(context),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () {},
                    child: RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          PhosphorIcons.mapPinFill,
                          color: Colors.red,
                          size: 14,
                        )),
                        TextSpan(
                            text:
                                "Antar ke : Perumahan Kusuma Indah, Gg. Edelweis... ",
                            style: TextStyle(fontSize: 13, color: Colors.black))
                      ]),
                    )),
              ),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 10),
                child: Image.network(
                  'https://cdn.discordapp.com/attachments/1008921423915532368/1011547690666049556/image_4.png',
                  fit: BoxFit.cover,
                ),
              ),
              borderCustom(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Diskon Terus s/d 60%",
                        style: TextStyle(color: secondaryColor, fontSize: 13),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(2))),
                          onPressed: () {},
                          child: Text(
                            "Lihat Semua >",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ))
                    ]),
              ),
              Container(
                width: double.infinity,
                height: 205,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GridView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                                              color: secondaryColor,
                                              fontSize: 9),
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
                decoration: BoxDecoration(
                    border: Border(
                        top:
                            BorderSide(color: Colors.grey.shade300, width: 6))),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo Jumbo s/d 70RB",
                        style: TextStyle(color: secondaryColor, fontSize: 13),
                      ),
                      TextButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(2))),
                          onPressed: () {},
                          child: Text(
                            "Lihat Semua >",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ))
                    ]),
              ),
              Container(
                width: double.infinity,
                height: 205,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GridView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                                              color: secondaryColor,
                                              fontSize: 9),
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
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.selectionAllBold,
                size: 30,
              ),
              label: "Pilihan",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.heartBold,
                  size: 30,
                ),
                label: "Favorit"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: secondaryColor,
        ));
  }
}
