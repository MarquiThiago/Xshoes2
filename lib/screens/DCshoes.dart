import 'package:flutter/material.dart';
import 'package:teste/consts.dart';
import 'package:teste/card.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          );
        }),
      ),
      backgroundColor: Color(0xFF363f93),
      body: Card2(
        photo: KDCshoes,
        information:
            'Descrição: tenis feito para o seu role de skate\n\n Valor: 1.999\n\n Praso: 15 dias',
      ),
    );
  }
}
