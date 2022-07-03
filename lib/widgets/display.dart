import 'package:flutter/material.dart';

import 'substrate_card.dart';
import 'package:provider/provider.dart';
import 'package:calc_memo/models/math_data.dart';


class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubstrateCard(
      cardFlex: 13,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              maxLines: 16,
              Provider.of<MathData>(context).getExpression().toString(),

              textAlign: TextAlign.right,
            ),
            Text(
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
              '=${Provider.of<MathData>(context).getResult().toString()}',

              textAlign: TextAlign.right,
            ),
          ]),
    );
  }
}
