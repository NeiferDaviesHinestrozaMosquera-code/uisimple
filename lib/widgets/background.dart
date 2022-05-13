import 'dart:math';

import 'package:flutter/material.dart';


class Background extends StatelessWidget {

    final boxDecoration = BoxDecoration( ///PARA TRABAJAR CON GRADIANTES
      gradient: LinearGradient(
        begin: Alignment.topCenter, ///INICIO DE EL GRADIENTE CON EL PRIMERO COLOR
        end: Alignment.bottomCenter,///FINAL DE EL GRADIENTE CON EL SEGUNDO COLOR
        stops: [0.2, 0.8], ////DIMENSIONES DE COLOR
        colors: 
      ///  [Colors.pinkAccent , Colors.blueAccent] //ESTE ES UN EJEMPLO
       [
       Color(0xff2E305F),
       Color(0xff202333),
        ]
        )
      );

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          //COLOR MORADO DEL GRADIANTE
          Container(decoration: boxDecoration,),

          //COLOR ROSADA
          Positioned(
            top: -100,
            left: -10,
            child: _PinkBox()),
        ],
      ),
   );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
         // color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}