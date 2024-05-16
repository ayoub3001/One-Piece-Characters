import 'package:flutter/material.dart';
//REALIZADO POR AYOUB AJLANE BENNANI

Container appBar({required String titulo, required String subtitulo}) {
  return Container(
    padding: const EdgeInsets.only(top: 70, bottom: 20, left: 20, right: 20),
    color: const Color.fromARGB(255, 41, 40, 39),
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 4,
            ),
            Text(
              titulo,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              subtitulo,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          children: [
            FloatingActionButton(
              heroTag: "search",
              elevation: 1.0,
              backgroundColor: const Color.fromARGB(255, 37, 36, 35),
              onPressed: () {},
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: "notifications",
              elevation: 1.0,
              backgroundColor: const Color.fromARGB(255, 37, 36, 35),
              onPressed: () {},
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
