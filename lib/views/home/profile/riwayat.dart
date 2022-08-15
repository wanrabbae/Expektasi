import 'package:expektasi/core/utils/component.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                PhosphorIcons.handWavingFill,
                size: 200,
                color: secondaryColor,
              ),
            ),
            Center(child: Text('Belum ada apa-apa nih \n mulai belanja yuk')),
          ],
        ));
  }
}
