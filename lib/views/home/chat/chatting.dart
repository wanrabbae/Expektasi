import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChattingView extends StatefulWidget {
  const ChattingView({Key? key}) : super(key: key);

  @override
  State<ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<ChattingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatting'),
      ),
      body: Center(
        child: Text('Chatting'),
      ),
    );
  }
}
