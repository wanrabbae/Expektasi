import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/product_card.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  // const CartView({Key? key}) : super(key: key);
  int selectedPage;
  CartView(this.selectedPage);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: widget.selectedPage,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            elevation: 2,
            bottom: TabBar(
              indicatorColor: secondaryColor,
              indicatorWeight: 5,
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Semua'),
                Tab(text: 'Favorit'),
                Tab(text: 'Beli Lagi'),
              ],
            ),
            title: Center(
                child: Text(
              'Keranjang Belanja ',
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductCartAll(count, setState),
              ProductFavouriteAll(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
