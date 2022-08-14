import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NotifView extends StatefulWidget {
  const NotifView({Key? key}) : super(key: key);

  @override
  State<NotifView> createState() => _NotifViewState();
}

class _NotifViewState extends State<NotifView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
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
              indicatorColor: secondaryColor,
              indicatorWeight: 5,
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Baru-baru ini'),
                Tab(text: 'Semua'),
              ],
            ),
            title: Text(
              'Notifikasi',
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
            ],
          ),
        ),
      ),
    );
  }
}
