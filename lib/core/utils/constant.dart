import 'package:expektasi/views/kategori/kategori.dart';
import 'package:expektasi/views/product/product.dart';
import 'package:expektasi/views/product/product_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

List<Map<String, dynamic>> listMenu = [
  {
    "name": "Penampilan",
    "icon": PhosphorIcons.tShirtFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Peralatan Gaming",
    "icon": PhosphorIcons.gameControllerFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Elektronik",
    "icon": PhosphorIcons.cpuFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Makanan & Minuman",
    "icon": PhosphorIcons.forkKnifeFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Perawatan & Kecantikan",
    "icon": PhosphorIcons.pillFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Alat Tulis",
    "icon": PhosphorIcons.pencilCircleFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Olahraga",
    "icon": PhosphorIcons.volleyballFill,
    "link": ProductCategoriesView()
  },
  {"name": "Lain Lain", "icon": PhosphorIcons.listBold, "link": KategoriView()},
];

List<Map<String, dynamic>> listCategory = [
  {
    "name": "Penampilan",
    "icon": PhosphorIcons.tShirtFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Peralatan Gaming",
    "icon": PhosphorIcons.gameControllerFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Elektronik",
    "icon": PhosphorIcons.cpuFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Makanan & Minuman",
    "icon": PhosphorIcons.forkKnifeFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Kecantikan",
    "icon": PhosphorIcons.pillFill,
    'link': ProductCategoriesView()
  },
  {
    "name": "Olahraga",
    "icon": PhosphorIcons.volleyballFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Kesehatan",
    "icon": PhosphorIcons.pencilCircleFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Pulsa & Token Listrik",
    "icon": PhosphorIcons.phoneSlashBold,
    "link": ProductCategoriesView()
  },
  {
    "name": "Peralatan Tulis",
    "icon": PhosphorIcons.pencilCircleFill,
    "link": ProductCategoriesView()
  },
  {
    "name": "Peralatan Music",
    "icon": PhosphorIcons.musicNote,
    "link": ProductCategoriesView()
  },
  {
    "name": "Peralatan Seni",
    "icon": PhosphorIcons.articleBold,
    "link": ProductCategoriesView()
  },
  {
    "name": "Peralatan Rumah Tangga",
    "icon": PhosphorIcons.houseSimpleBold,
    "link": ProductCategoriesView()
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

List<Map<String, dynamic>> listSizeProduct = [
  {
    "size": "S",
  },
  {"size": "L"},
  {"size": "XL"},
  {"size": "XXL"},
  {"size": "XXL"},
  {"size": "XXL"},
  {"size": "XXL"},
];

List<Map<String, dynamic>> listWarnaProduct = [
  {
    "warna": "Merah",
  },
  {"warna": "Kuning"},
  {"warna": "Hijau"},
  {"warna": "Biru"},
  {"warna": "Ungu"},
  {"warna": "Coklat"},
  {"warna": "Mocha"},
];

// Map<String, String> listRincianProduct = {
//   "Stok": "205",
//   "Panjang Lengan": "Lengan Panjang",
//   "Bahan": "Katun",
//   "Negara Asal": "Indonesia",
//   "Dikirim dari": "KOTA JAKARTA SELATAN - KEBAYORAN LAMA, DKI  JAKARTA"
// };

List<Map<String, dynamic>> listRincianProduct = [
  {"Stok": 205},
  {"Panjang Lengan": "Lengan Panjang"},
  {"Bahan": "Katun"},
  {"Negara Asal": "Indonesia"},
  {"Dikirim dari": "KOTA JAKARTA SELATAN - KEBAYORAN LAMA, DKI  JAKARTA"}
];

List<Map<String, dynamic>> listVouchers = [
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022"
  },
  {
    "image":
        "https://cdn.discordapp.com/attachments/1008921423915532368/1010792959890952243/Vector.png",
    "name": "Voucher gratis ongkir",
    "date": "25.09.2022",
  },
];
