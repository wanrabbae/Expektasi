import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/core/utils/custom_shape.dart';
import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  final String message;
  const SentMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Column(
              children: [
                Text(
                  message,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  "10.02 AM",
                  style: TextStyle(color: Colors.white, fontSize: 7),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
        CustomPaint(painter: CustomShape(secondaryColor)),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
