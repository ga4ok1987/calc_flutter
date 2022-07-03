import 'package:calc_memo/screens/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'models/math_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MathData(),

      child: MaterialApp(

      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kScaffoldBackGroundColor,
      ),

      home: MyHomePage(),
    ),
    );
  }
}
