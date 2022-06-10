import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2(
      {Key? key,
      required this.photo,
      required this.information,
      required this.nameShoe})
      : super(key: key);

  final AssetImage photo;
  final String information;
  final String nameShoe;

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Positioned(
            child: Container(
              height: 550,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                image: DecorationImage(
                  image: widget.photo,
                  alignment: const Alignment(0.0, 0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(-10.0, 10.0),
                    blurRadius: 20.0,
                    spreadRadius: 4.0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 380,
                    left: 10,
                    child: Material(
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          widget.information,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Material(
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          widget.nameShoe,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
