//REALIZADO POR AYOUB AJLANE BENNANI

import 'package:flutter/material.dart';

// Aqui guardamos los colores
const Map<String, Color> colores = {
  "Morado": Color.fromARGB(255, 62, 31, 173),
  "Rojo": Color.fromARGB(255, 197, 53, 48),
  "Amarillo": Color.fromARGB(255, 243, 200, 77),
  "Verde": Color.fromARGB(255, 106, 226, 14),
  "Azul": Color.fromARGB(255, 7, 208, 227),
  "Violeta": Color.fromARGB(255, 138, 43, 226),
  "Naranja": Color.fromARGB(255, 255, 165, 0),
  "Marron": Color.fromARGB(255, 139, 69, 19),
};

// Esta es la base de datos de cada personaje, solamente agregar aqui el personaje con las claves .
// CLAVES:
// - nombre
// - image
// - color
//
const Map<String, Map<String, String>> data = {
  "Personaje 1": {
    "nombre": "Brook",
    "image": "assets/images/o1.png",
    "color": "Morado"
  },
  "Personaje 2": {
    "nombre": "Boa Hancock",
    "image": "assets/images/o5.png",
    "color": "Violeta"
  },
  "Personaje 3": {
    "nombre": "Alvida",
    "image": "assets/images/o4.png",
    "color": "Rojo"
  },
  "Personaje 4": {
    "nombre": "Roronoa Zoro",
    "image": "assets/images/o6.png",
    "color": "Azul"
  },
  "Personaje 5": {
    "nombre": "Portgas D. Ace",
    "image": "assets/images/o3.png",
    "color": "Amarillo"
  },
  "Personaje 6": {
    "nombre": "Monkey D. Luffy",
    "image": "assets/images/o2.png",
    "color": "Verde"
  },
  "Personaje 7": {
    "nombre": "Nico Robin",
    "image": "assets/images/o7.png",
    "color": "Marron"
  },
  "Personaje 8": {
    "nombre": "Franky",
    "image": "assets/images/o8.png",
    "color": "Naranja"
  },
};
