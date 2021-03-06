import 'package:flutter/material.dart';
import 'package:teste/models/tenis.dart';

class Cards extends StatefulWidget {
  const Cards({
    Key? key,
    required this.nameShoe,
    required this.photo,
    required this.descricao,
  }) : super(key: key);

  final String nameShoe;
  final AssetImage photo;
  final String descricao;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(
          context,
          '/detail-shoe',
          arguments: Tenis(
            widget.photo,
            widget.descricao,
            widget.nameShoe,
          ),
        );
      }),
      child: SizedBox(
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
                        offset: const Offset(-10.0, 10.0),
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
                  padding: const EdgeInsets.all(40),
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
              child: SizedBox(
                height: 150,
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameShoe,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF363f93),
                      ),
                    ),
                    const Text(
                      'Os melhores tenis para suas atividades fisicas e esportes',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const Text(
                      'click in here for more information!',
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
