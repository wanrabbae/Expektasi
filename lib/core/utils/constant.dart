import 'package:expektasi/views/kategori/kategori.dart';
import 'package:expektasi/views/product/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

List<Map<String, dynamic>> listMenu = [
  {"name": "Penampilan", "icon": PhosphorIcons.tShirtFill, 'link': ''},
  {
    "name": "Peralatan Gaming",
    "icon": PhosphorIcons.gameControllerFill,
    "link": ''
  },
  {"name": "Elektronik", "icon": PhosphorIcons.cpuFill, 'link': ''},
  {
    "name": "Makanan & Minuman",
    "icon": PhosphorIcons.forkKnifeFill,
    'link': ''
  },
  {
    "name": "Perawatan & Kecantikan",
    "icon": PhosphorIcons.pillFill,
    'link': ''
  },
  {"name": "Alat Tulis", "icon": PhosphorIcons.pencilCircleFill, "link": ''},
  {"name": "Olahraga", "icon": PhosphorIcons.volleyballFill, "link": ''},
  {"name": "Lain Lain", "icon": PhosphorIcons.listBold, "link": KategoriView()},
];

List<Map<String, dynamic>> listCategory = [
  {"name": "Penampilan", "icon": PhosphorIcons.tShirtFill, 'link': ''},
  {
    "name": "Peralatan Gaming",
    "icon": PhosphorIcons.gameControllerFill,
    "link": ''
  },
  {"name": "Elektronik", "icon": PhosphorIcons.cpuFill, 'link': ''},
  {
    "name": "Makanan & Minuman",
    "icon": PhosphorIcons.forkKnifeFill,
    'link': ''
  },
  {"name": "Kecantikan", "icon": PhosphorIcons.pillFill, 'link': ''},
  {"name": "Olahraga", "icon": PhosphorIcons.volleyballFill, "link": ''},
  {"name": "Kesehatan", "icon": PhosphorIcons.pencilCircleFill, "link": ''},
  {
    "name": "Pulsa & Token Listrik",
    "icon": PhosphorIcons.phoneSlashBold,
    "link": ''
  },
  {
    "name": "Peralatan Tulis",
    "icon": PhosphorIcons.pencilCircleFill,
    "link": ''
  },
  {"name": "Peralatan Music", "icon": PhosphorIcons.musicNote, "link": ''},
  {"name": "Peralatan Seni", "icon": PhosphorIcons.articleBold, "link": ''},
  {
    "name": "Peralatan Rumah Tangga",
    "icon": PhosphorIcons.houseSimpleBold,
    "link": ''
  },
];

List<Map<String, dynamic>> listProducts = [
  {
    "name": "SWEATER PRIA - ESOBOY HOODIE JUMPER",
    "image":
        'https://res.cloudinary.com/touchme/image/upload/v1660013480/Rectangle_24_ouwybv.png',
    "price": "Rp100.000",
    "link": ProductView()
  },
  {
    "name": "SWEATER PRIA - ESOBOY HOODIE JUMPER",
    "image":
        'https://res.cloudinary.com/touchme/image/upload/v1660013480/Rectangle_24_ouwybv.png',
    "price": "Rp100.000",
    "link": ProductView()
  },
  {
    "name": "SWEATER PRIA - ESOBOY HOODIE JUMPER",
    "image":
        'https://res.cloudinary.com/touchme/image/upload/v1660013480/Rectangle_24_ouwybv.png',
    "price": "Rp100.000",
    "link": ProductView()
  },
  {
    "name": "SWEATER PRIA - ESOBOY HOODIE JUMPER",
    "image":
        'https://res.cloudinary.com/touchme/image/upload/v1660013480/Rectangle_24_ouwybv.png',
    "price": "Rp100.000",
    "link": ProductView()
  },
];

List<Map<String, dynamic>> listBrands = [
  {
    "name": "Arowwai",
    "image":
        "https://res.cloudinary.com/touchme/image/upload/v1660268991/Ellipse_5_dpdtwo.png",
    "link": ''
  },
  {
    "name": "Toko Salimah",
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1008984302194794516/Ellipse_8.png",
    "link": ''
  },
  {
    "name": "Sarifah Collection",
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1008984302622609418/Ellipse_7.png",
    "link": ''
  },
  {
    "name": "Fikry Store",
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1008984302987522089/Ellipse_6.png",
    "link": ''
  },
  {
    "name": "Arowwai",
    "image":
        "https://res.cloudinary.com/touchme/image/upload/v1660268991/Ellipse_5_dpdtwo.png",
    "link": ''
  },
];
