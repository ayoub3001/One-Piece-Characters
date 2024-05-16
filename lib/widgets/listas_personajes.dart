//REALIZADO POR AYOUB AJLANE BENNANI

// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';

import '../models/data_base.dart';
import '../screens/screen_personaje.dart';

// ESTO ES BASICAMENTE LA TIRA EN LA QUE SE MUESTRA EL PERSONAJE, SU NOMBRE Y LOS 3 PUNTITOS.

class ListaPersonajes extends StatefulWidget {
  // Aqui solicitamos los datos necesarios, el id del personaje (personajeNUM) y el colorFondo
  final String personajeNUM;
  final Color colorFondo;
  const ListaPersonajes({
    super.key,
    required this.personajeNUM, //Ponemos requeridos porque son necesarios para su construcción.
    required this.colorFondo,
  });

  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10), //Mandamos los datos al contenedor.
      child: listaContenedor(widget.personajeNUM, widget.colorFondo, context),
    );
  }
}

// Este widget se encarga de lo visual, mostrar la imagen, su nombre y los 3 puntitos.
Widget listaContenedor(String personajeNUM, colorFondo, context) {
  String _personajeImagen = "";
  String _name = "";

  // Aqui validamos que la clave "image" de la base de datos no sea null, lo mismo con el nombre
  // Y los guardamos en las variables privadas para usarlas luego.
  if (data[personajeNUM]?["image"] != null) {
    _personajeImagen = data[personajeNUM]!["image"] as String;
  }
  if (data[personajeNUM]?["nombre"] != null) {
    _name = data[personajeNUM]!["nombre"] as String;
  }
  //Hacemos uso del GestureDetector para que si el usuario pulsa cualquier parte del contenedor pues este le rediriga a la pantalla del personaje.
  return GestureDetector(
    //Aqui mandamos al usuario a la pantalla donde se muestra la informacion detallada y pasamos los parámetros necesarios.
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ScreenPersonaje(
                  personajeIMG: _personajeImagen,
                  personajeName: _name,
                  fondoColor: colorFondo as Color,
                ))),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(255, 23, 23, 23)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.normal,
                        color: colorFondo,
                      )
                    ],
                  ),
                  width: 50,
                  height: 50,
                  child: Hero(
                    tag: _personajeImagen,
                    child: Image.asset(
                      data[personajeNUM]!["image"]!,
                      fit: BoxFit.contain,
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              Text(
                data[personajeNUM]!["nombre"]!,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
    ),
  );
}
