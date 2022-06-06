import 'package:flutter/material.dart';
import 'home_page.dart';

main() => runApp(Xshoes());

class Xshoes extends StatelessWidget {
  const Xshoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2C004A),
        scaffoldBackgroundColor: Color(0xFF2C004A),
      ),
      home: HomePage(),
    );
  }
}
