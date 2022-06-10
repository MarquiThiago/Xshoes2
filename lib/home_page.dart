import 'package:flutter/material.dart';
import 'package:teste/card.dart';
import 'consts.dart';

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
        backgroundColor: const Color(0xFF363f93),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: const Color(0xFF363f93),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      offset: const Offset(-10.0, 10.0),
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
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  const Positioned(
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
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Cards(
                  nameShoe: 'DC shoes',
                  photo: kdcshoes,
                  descricao: 'Tênis DCshoes \nfeito para seu rolês de skate\n\n'
                      'Valor: RS 450\n\n prazo: 5 dias uteis',
                ),
                const Cards(
                  nameShoe: 'Vans Old School',
                  photo: kvans,
                  descricao: 'Vans tenis feito \npara seu rolê de skate\n\n'
                      'Valor: RS 400 \n\n prazo: chega amanha',
                ),
                const Cards(
                  nameShoe: 'Mercurial Pro',
                  photo: kchuteira,
                  descricao:
                      'Nike Mercurial Superfly Pro perfeita \npara seu footebol de compo\n\n'
                      'Valor: RS 250\n\n prazo: 2 dias uteis',
                ),
                const Cards(
                  nameShoe: 'Adidas Prophere',
                  photo: kadidas,
                  descricao:
                      'Adidas Prophere um tenis para corrida \nmas tambem para seu dia a dia\n\n'
                      'Valor: RS 600\n\n prazo: chega amanha',
                ),
                const Cards(
                  nameShoe: 'Puma Smash V3',
                  photo: kpuma,
                  descricao: 'Tênis Puma Smash V3 \ncasual para o dia a dia\n\n'
                      'Valor: RS 370\n\n prazo: 5 dias uteis',
                ),
                const Cards(
                  nameShoe: 'Nike Dunk',
                  photo: kdunk,
                  descricao:
                      'Nike Dunk, tenis perfeito \npra jogar um basquete\n\n'
                      'Valor: RS 370\n\n prazo: 5 dias uteis',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
