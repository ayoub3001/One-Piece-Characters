import 'package:flutter/material.dart';

//Aqui nos encargaos de mostrar las portadas(las minitaturas)
Column pelicula(List portada, context) {
  return Column(
    children: [
      Container(
          height: 150,
          margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                //En el index 0 de la lista portada se guarda el path de la imagen en tipo String.
                portada[0],
                width: MediaQuery.of(context).size.width /
                    2, //Aqui dividimos el ancho de la pantalla entre 2 y se lo asignamos como ancho de la imagen.
                fit: BoxFit.cover,
              ))),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            portada[1], //En el index 1 se guarda el subtitulo de la portada
            style: const TextStyle(
                color: Color.fromARGB(255, 160, 160, 160), fontSize: 12),
          ),
          Text(portada[2], //En el index 2 se guarda el año de la portada.
              style: const TextStyle(
                  color: Color.fromARGB(255, 60, 60, 60), fontSize: 10))
        ],
      ),
    ],
  );
}
