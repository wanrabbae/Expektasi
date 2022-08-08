import 'package:expektasi/core/utils/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KategoriView extends StatefulWidget {
  const KategoriView({Key? key}) : super(key: key);

  @override
  State<KategoriView> createState() => _KategoriViewState();
}

class _KategoriViewState extends State<KategoriView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar4(
          title: 'Kategori Lain Lain'
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text('tes')
            ],
          ),
        ),
      ),
    );
  }
}
