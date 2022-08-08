import 'package:expektasi/views/kategori/kategori.dart';
import 'package:flutter/cupertino.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

List<Map<String, dynamic>> listMenu = [
  {
    "name": "Penampilan",
    "icon": PhosphorIcons.tShirtFill,
    'link': ''
  },
  {
    "name": "Peralatan Gaming",
    "icon": PhosphorIcons.gameControllerFill,
    "link": ''
  },
  {
    "name": "Elektronik",
    "icon": PhosphorIcons.cpuFill,
    'link': ''
  },
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
  {
    "name": "Alat Tulis",
    "icon": PhosphorIcons.pencilCircleFill,
    "link": ''
  },
  {
    "name": "Olahraga",
    "icon": PhosphorIcons.volleyballFill,
    "link": ''
  },
  {
    "name": "Lain Lain",
    "icon": PhosphorIcons.listBold,
    "link": KategoriView()
  },
];