import 'package:expektasi/core/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future goBack([args]) async =>
    Navigator.of(navigatorKey.currentContext!).pop(args);

Future goRemove(Widget widget) async =>
    Navigator.of(navigatorKey.currentContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
          (route) => false,
    );

Future goPush(Widget widget) async =>
    Navigator.of(navigatorKey.currentContext!).push(
      MaterialPageRoute(
        builder: (_) => widget,
      ),
    );
