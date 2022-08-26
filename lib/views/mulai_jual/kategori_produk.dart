import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/constant.dart';
import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
import 'package:flutter/material.dart';

class KategoriProduk extends StatefulWidget {
  const KategoriProduk({Key? key}) : super(key: key);

  @override
  State<KategoriProduk> createState() => _KategoriProdukState();
}

class _KategoriProdukState extends State<KategoriProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: ((context) => (TambahProduk())))),
          ),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(style: TextStyle(fontSize: 35), children: [
                  TextSpan(
                      text: 'Kategori Produk',
                      style: TextStyle(color: Colors.black))
                ])),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 50),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                  itemCount: listCategory.length,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (categories, index) {
                    var data = listCategory[index];
                    return InkWell(
                      splashColor: secondaryColor.withAlpha(30),
                      onTap: () => print("Tapped"),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
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
                              fontSize: 8.5,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
