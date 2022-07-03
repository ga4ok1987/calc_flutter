import 'package:calc_memo/widgets/round_button.dart';
import 'package:calc_memo/widgets/display.dart';
import 'package:calc_memo/widgets/substrate_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/math_data.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Display(),
            Expanded(
              flex: 12,
              child: Row(
                children: [
                  SubstrateCard(
                    cardFlex: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                                text: 'AC',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .clearExpression();
                                }),
                            RoundButton(
                                text: '7',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('7');
                                }),
                            RoundButton(
                                text: '4',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('4');
                                }),
                            RoundButton(
                                text: '1',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('1');
                                }),
                            RoundButton(
                              text: '+/-',
                              onPressed: () {
                                Provider.of<MathData>(context, listen: false)
                                    .negativeNumber()
                                    .toString();
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(
                              text: 'C',
                              onPressed: () {
                                Provider.of<MathData>(context, listen: false)
                                    .removeLast();
                              },
                            ),
                            RoundButton(
                                text: '8',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('8');
                                }),
                            RoundButton(
                                text: '5',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('5');
                                }),
                            RoundButton(
                                text: '2',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('2');
                                }),
                            RoundButton(
                                text: '0',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('0');
                                }),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButton(text: '%', onPressed: () {}),
                            RoundButton(
                                text: '9',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('9');
                                }),
                            RoundButton(
                                text: '6',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('6');
                                }),
                            RoundButton(
                                text: '3',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('3');
                                }),
                            RoundButton(
                                text: '  .',
                                onPressed: () {
                                  Provider.of<MathData>(context, listen: false)
                                      .addNumber('.');
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SubstrateCard(
                    cardFlex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundButton(
                            text: '÷',
                            onPressed: () {
                              Provider.of<MathData>(context, listen: false)
                                  .addSign('/');
                            }),
                        RoundButton(
                            text: '*',
                            onPressed: () {
                              Provider.of<MathData>(context, listen: false)
                                  .addSign('*');
                            }),
                        RoundButton(
                            text: '-',
                            onPressed: () {
                              Provider.of<MathData>(context, listen: false)
                                  .addSign('-');
                            }),
                        RoundButton(
                            text: '+',
                            onPressed: () {
                              Provider.of<MathData>(context, listen: false)
                                  .addSign('+');
                            }),
                        RoundButton(text: '=', onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
