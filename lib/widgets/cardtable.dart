import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
          _SigleCard(color: Colors.blue, icon: Icons.pie_chart, text: 'General',),
          _SigleCard(color: Colors.purple, icon: Icons.bus_alert_outlined, text: 'Transport',),
          ]
        ),

         TableRow(
          children: [
          _SigleCard(color: Colors.pink, icon: Icons.shopping_bag, text: 'Shopping',),
          _SigleCard(color: Colors.amber, icon: Icons.blinds, text: 'Bills',),
          ]
        ),

         TableRow(
          children: [
          _SigleCard(color: Colors.blueGrey, icon: Icons.telegram, text: 'Entertainment',),
          _SigleCard(color: Colors.green, icon: Icons.local_grocery_store, text: 'Grocery',),
          ]
        ),

         TableRow(
          children: [
          _SigleCard(color: Colors.grey, icon: Icons.time_to_leave, text: 'Time',),
          _SigleCard(color: Colors.deepOrange, icon: Icons.system_security_update, text: 'System',),
          ]
        ),
      ],
    );
    
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
    {super.key, 
    required this.icon, 
    required this.color, 
    required this.text});



  @override
  Widget build(BuildContext context) {

    return _CardBackground(child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  CircleAvatar(
                    backgroundColor: this.color,
                    child: Icon(this.icon, size: 35,color: Colors.white,),
                    radius: 30,
                  ),
                  SizedBox(height: 10,),
                  Text(this.text, style: TextStyle(color: this.color , fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

  return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), ///ESTOM ES PARA REDONDEAR LAS CAJAS
        child: BackdropFilter( ///ESTO ES PARA DIFUMINAR LOS CUADROS
          filter: ImageFilter.blur(sigmaX: 5 , sigmaY: 5), ///ESTO ES PARA EL DIFUMINADO EN LA SELECCION
          child: Container(
           
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
             ),
             child: this.child,
          ),
        ),
      ),
    );
    
  }
}