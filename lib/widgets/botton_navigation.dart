import 'package:flutter/material.dart';


class BottomNavigation extends StatelessWidget {
  const BottomNavigation
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.calendar_month_outlined , size: 30,),
          label: 'Calendario'
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.chat_sharp , size: 30,),
          label: 'Grafica'
          ),

           BottomNavigationBarItem(
          icon: Icon(Icons.verified_user_sharp ,size: 30,),
          label: 'Usuarios'
          ),
      ]
      );
  }
}