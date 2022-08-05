import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  @override
  State<BerandaView> createState() => _BerandaViewState();
}

class _BerandaViewState extends State<BerandaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.network(
                  'https://cdn.discordapp.com/attachments/990841636386897971/1004642987973808178/Rectangle_20.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 35,
                  horizontal: 25
                ),
                height: 1000,
                transform: Matrix4.translationValues(0.0, -90.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 3,
                          color: secondaryColor
                        )
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Row(
                                children: [
                                  Icon(
                                    PhosphorIcons.wallet,
                                    size: 40,
                                    color: Color(0xffEB9007),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 5
                                      )
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Saldo'
                                      ),
                                      Text(
                                        'Rp.'
                                      ),
                                    ],
                                  ),
                                ],
                              )
                          ),
                          // FlatButton.icon(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.scan,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     ),
                          //   label: Text(
                          //     'Bayar'
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10
                            ),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.scan,
                                    size: 35,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5
                                    ),
                                    child: Text(
                                        "Bayar",
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10
                            ),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.coins,
                                    size: 35,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2
                                    ),
                                    child: Text(
                                        "Top Up",
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5
                            ),
                            child: InkWell(
                              splashColor: secondaryColor,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    PhosphorIcons.arrowsLeftRight,
                                    size: 35,
                                    color: Color(0xffEB9007),
                                  ), // <-- Icon
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 2
                                    ),
                                    child: Text(
                                        "Transfer",
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.wallet,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     )
                          // ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       PhosphorIcons.scan,
                          //       size: 30,
                          //       color: Color(0xffEB9007),
                          //     )
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
