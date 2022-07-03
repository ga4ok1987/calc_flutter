import 'package:flutter/material.dart';

class SubstrateCard extends StatelessWidget {
  SubstrateCard({required this.child, required this.cardFlex});

  final Widget child;
  final int cardFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: cardFlex,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFF706F8E)),
        margin: const EdgeInsets.all(5),
        child: child,
      ),
    );
  }
}
