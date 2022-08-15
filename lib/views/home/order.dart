import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OrderView extends StatefulWidget {
  int selectedPage;
  OrderView(this.selectedPage);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: widget.selectedPage,
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            elevation: 2,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: secondaryColor,
              indicatorWeight: 5,
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Menunggu Pembayaran'),
                Tab(text: 'Perlu Dikirim'),
                Tab(text: 'Dalam Perjalanan'),
                Tab(text: 'Selesai'),
                Tab(text: 'Dibatalkan'),
                Tab(text: 'Pengembalian'),
              ],
            ),
            title: Text(
              'Pesanan',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
              Container(
                child: Icon(PhosphorIcons.bellSimpleFill),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
