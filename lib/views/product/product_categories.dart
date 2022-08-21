import 'package:expektasi/core/utils/component.dart';
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
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: secondaryColor,
          title: Container(
              width: double.infinity,
              height: 35,
              // decoration: BoxDecoration(
              //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Mau nyari barang apa?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Text(
                    "|||",
                    style: TextStyle(fontSize: 5),
                  )
                ],
              )),
          elevation: 0,
          toolbarHeight: 70,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.selectionAllBold,
                size: 20,
              ),
              label: "Pilihan",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.heartBold,
                  size: 20,
                ),
                label: "Favorit"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: secondaryColor,
        ));
  }
}
