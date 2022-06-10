import 'package:flutter/material.dart';
import 'package:teste/models/tenis.dart';
import 'package:teste/page2.dart';
import 'home_page.dart';

main() => runApp(const Xshoes());

class Xshoes extends StatelessWidget {
  const Xshoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF2C004A),
        scaffoldBackgroundColor: const Color(0xFF2C004A),
      ),
      home: const HomePage(),
      routes: {
        '/detail-shoe': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Tenis;
          return Page2(
            tenis: args,
          );
        },
      },
    );
  }
}
