import 'package:expektasi/core/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future goBack([args]) async =>
    Navigator.of(navigatorKey.currentContext!).pop(args);

Future goRemove(Widget widget, context) async => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: ((context) => widget)),
    ((route) => false));

Future goPush(Widget widget, context) async =>
    Navigator.push(context, MaterialPageRoute(builder: ((context) => widget)));
