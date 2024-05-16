// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/data_base.dart';
import 'listas_personajes.dart';

List<ListaPersonajes> construccionPersonajes() {
  // ignore: no_leading_underscores_for_local_identifiers
  List<String> _personajesLista =
      []; // Aqui guardamos la clave de cada personaje (Personaje 1,2...)
  // ignore: no_leading_underscores_for_local_identifiers
  List<ListaPersonajes> _listaPersonajesHecha = [];
  Map<dynamic, dynamic> mapColoresPersonajes = {};

  // Iteramos sobre el map.key para obtener cada key y guardarla en la lista
  for (String clave in data.keys) {
    _personajesLista.add(clave);

    mapColoresPersonajes[clave] =
        data[clave]!["color"]; //Guardamos en el map el color de cada personaje.
  }

  // Aqui iteramos sobre la lista de personajes para usar la clave
  for (var clave in _personajesLista) {
    Color colorListo = const Color.fromARGB(0, 1, 1, 1);
    // Usamos el switch para verificar el color correspondiente a cada personaje
    switch (mapColoresPersonajes[clave]) {
      case "Morado":
        colorListo = colores["Morado"]!;
        break;
      case "Rojo":
        colorListo = colores["Rojo"]!;
        break;
      case "Amarillo":
        colorListo = colores["Amarillo"]!;
        break;
      case "Violeta":
        colorListo = colores["Violeta"]!;
        break;
      case "Verde":
        colorListo = colores["Verde"]!;
        break;
      case "Azul":
        colorListo = colores["Azul"]!;
        break;
      case "Marron":
        colorListo = colores["Marron"]!;
        break;
      case "Naranja":
        colorListo = colores["Naranja"]!;
        break;
    }
    //Aqui guardamos la lista final el widget para luego iterar sobre la lista en la pantalla mostrando asi cada personaje.
    _listaPersonajesHecha
        .add(ListaPersonajes(personajeNUM: clave, colorFondo: colorListo));
  }

  return _listaPersonajesHecha;
}
