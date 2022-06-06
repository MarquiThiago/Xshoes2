import 'package:flutter/material.dart';
import 'package:teste/card.dart';
import 'package:teste/consts.dart';
import 'package:teste/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363f93),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xFF363f93),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.10),
                    offset: Offset(-10.0, 10.0),
                    blurRadius: 20.0,
                    spreadRadius: 4.0,
                  ),
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        )),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 80,
                  child: Text(
                    'Xshoes',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Color(0xFF363f93),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Cards(
                nameShoe: 'DC shoes',
                photo: KDCshoes,
              ),
              Cards(
                nameShoe: 'Vans',
                photo: KVans,
              ),
              Cards(
                nameShoe: 'Chuteira',
                photo: KChuteira,
              ),
              Cards(
                nameShoe: 'Adidas',
                photo: KAdidas,
              ),
              Cards(
                nameShoe: 'Puma',
                photo: KPuma,
              )
            ],
          ),
        ],
      ),
    );
  }
}
