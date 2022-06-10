import 'package:flutter/material.dart';
import 'card_2.dart';
import 'models/tenis.dart';

class Page2 extends StatefulWidget {
  final Tenis tenis;

  @override
  const Page2({Key? key, required this.tenis}) : super(key: key);
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
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          );
        }),
      ),
      backgroundColor: const Color(0xFF363f93),
      body: Column(
        children: [
          Card2(
            photo: widget.tenis.foto,
            information: widget.tenis.descricao,
            nameShoe: widget.tenis.nameshoes,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              'Xshoes',
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
