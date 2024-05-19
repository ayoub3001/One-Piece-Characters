//REALIZADO POR AYOUB AJLANE BENNANI

import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/construccionPersonaje.dart';
import '../widgets/portada.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: [
            appBar(titulo: "One Piece", subtitulo: "Serie"),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    top: 40, left: 10, right: 20, bottom: 20),
                child: const Text(
                  "Portada",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      pelicula([
                        "assets/images/p1.jpg",
                        "Portada 1",
                        "2023"
                      ], context),
                      pelicula([
                        "assets/images/p2.jpg",
                        "Portada 2",
                        "2018"
                      ], context),
                      pelicula([
                        "assets/images/p3.jpg",
                        "Portada 3",
                        "2017"
                      ], context),
                    ],
                  ),
                )),
            Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: const Text(
                  "Personajes",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            for (Widget widget in construccionPersonajes()) widget,
            const SizedBox(
              height: 50,
            )
          ]),
        ));
  }
}