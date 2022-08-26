import 'package:expektasi/views/mulai_jual/tambah_produk.dart';
import 'package:flutter/material.dart';

class VariasiView extends StatefulWidget {
  const VariasiView({Key? key}) : super(key: key);

  @override
  State<VariasiView> createState() => _VariasiViewState();
}

class _VariasiViewState extends State<VariasiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Variasi Produk",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => (TambahProduk()))));
          },
        ),
      ),
      body: VariasiForm(),
    );
  }
}

class VariasiForm extends StatelessWidget {
  const VariasiForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: [
          new Container(
            margin: EdgeInsets.only(top: 50),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: new Column(
              children : [
                
              ]
            ),
          )
        ],
      ),
    );
  }
}
