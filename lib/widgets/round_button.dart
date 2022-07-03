import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 65.0,
        height: 65.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF393A5A),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFADA9BA)),
      ),
    );
  }
}
