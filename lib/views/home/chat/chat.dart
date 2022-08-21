import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
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
            'Chat',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 11),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        fillColor: Colors.grey[300],
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Cari Kontak, Penjual, & Pesan',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey,
                                                  width: 0.5))),
                                      child: TabBar(
                                        indicatorColor: secondaryColor,
                                        labelColor: secondaryColor,
                                        unselectedLabelColor: Colors.black,
                                        tabs: [
                                          Tab(text: 'Chat'),
                                          Tab(text: 'Aktivitas Teman'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Text(
                                        'Semua >',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    )
                                  ],
                                )),
                            Container(
                                height: double.infinity, //height of TabBarView
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    child: Column(children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1)),
                                        ),
                                        child: InkWell(
                                          onTap: () {},
                                          splashColor: secondaryColor,
                                          child: Row(children: [
                                            Expanded(
                                                child: Container(
                                              height: double.infinity,
                                              child: Image.network(
                                                'https://cdn.discordapp.com/attachments/1008921423915532368/1010782811873099816/Group_44.png',
                                                width: 100,
                                              ),
                                            )),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                height: double.infinity,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Admin Ekspektasi',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Hi, Terima kasih sudah daftar aplikasi...',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              alignment: Alignment.topRight,
                                              height: double.infinity,
                                              child: Text(
                                                "26-07-2022",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 8),
                                              ),
                                            ))
                                          ]),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1)),
                                        ),
                                        child: InkWell(
                                          onTap: () {},
                                          splashColor: secondaryColor,
                                          child: Row(children: [
                                            Expanded(
                                                child: Container(
                                              height: double.infinity,
                                              child: Image.network(
                                                'https://cdn.discordapp.com/attachments/1008921423915532368/1010782811873099816/Group_44.png',
                                                width: 100,
                                              ),
                                            )),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                height: double.infinity,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Admin Ekspektasi',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      'Hi, Terima kasih sudah daftar aplikasi...',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              alignment: Alignment.topRight,
                                              height: double.infinity,
                                              child: Text(
                                                "26-07-2022",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 8),
                                              ),
                                            ))
                                          ]),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Friend activity',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ]))
                          ])),
                ]),
          ),
        ));
  }
}
