import 'package:flutter/material.dart';


//Esta clase se encarga de la construccion de la pantalla del personaje
class ScreenPersonaje extends StatelessWidget {
  //Aqui declaramos las variables que usaremos más adelante. "Información del personaje"
  final String personajeIMG;
  final String personajeName;
  final Color fondoColor;
  const ScreenPersonaje(
      {super.key,
      required this.personajeIMG,
      required this.personajeName,
      required this.fondoColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                //Configuramos aqui el color gradiente del fondo, solicitamos el color principal
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [fondoColor, Colors.black])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LayoutBuilder(
                //Usamos Layout Builder para tener un control sobre el posicionamiento de los widget segun el tamaño de la pantalla.
                builder: (BuildContext context, constraints) {
              return Column(
                children: [
                  Stack(
                    //Usamos un Stack para poner debajo la imagen y por encima el Container con el nombre del personaje.
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        alignment: Alignment.topLeft,
                        height: MediaQuery.of(context).size.height * .6,
                        child: Hero(
                            tag: personajeIMG,
                            child: Image.asset(personajeIMG)),
                      ),
                      Positioned(
                        bottom:
                            0, //Posicionamos el Container abajo del todo pero encima de la imagen.
                        left: constraints.maxWidth *
                            0.03, //Posicionamos el container al 20% desde la izquierda
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: Text(
                            personajeName, //Solicitamos el nombre del personaje y lo mostramos por pantalla
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        personajeName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text("One Piece",
                        style: TextStyle(
                            color: Color.fromARGB(255, 183, 182, 182),
                            fontSize: 12)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Eiichiro Oda",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text("Creador",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 183, 182, 182),
                                      fontSize: 12)),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Japón",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              Text("Pais",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 183, 182, 182),
                                      fontSize: 12)),
                            ],
                          ))
                    ],
                  ),
                ],
              );
            }),
            GestureDetector(
              onTap: () =>  Navigator.of(context).pop(),
              child: Container(
                margin: const EdgeInsets.only(bottom: 60),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: fondoColor),
                child: const Text("Volver",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
