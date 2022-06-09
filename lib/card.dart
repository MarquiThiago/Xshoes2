import 'package:flutter/material.dart';
import 'screens/page2.dart';

class Cards extends StatefulWidget {
  Cards({
    required this.nameShoe,
    required this.photo,
  });

  final String nameShoe;
  final AssetImage photo;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Page2())));
      }),
      child: Container(
        height: 230,
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 20,
              child: Material(
                child: Container(
                  height: 180.0,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(-10.0, 10.0),
                        blurRadius: 20.0,
                        spreadRadius: 4.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 30,
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: widget.photo,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 190,
              child: Container(
                height: 150,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameShoe,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF363f93),
                      ),
                    ),
                    Text(
                      'Os melhores tenis para suas atividades fisicas e esportes',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Text(
                      'click in here for more information!!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card2 extends StatefulWidget {
  Card2({required this.photo, required this.information});

  final AssetImage photo;
  final String information;

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: widget.photo,
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(-10.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 4.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Material(
                    child: Container(
                      color: Colors.white,
                      child: Text(
                        widget.information,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
