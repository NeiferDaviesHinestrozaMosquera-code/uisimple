
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20), ///MARGENES DE LOS TITULOS Y SUBTITULOS
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  ///ALINEACION 
          children: [
              Text('Admin Panel', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white) ,),
              SizedBox(height: 10,),
              Text('This is a zone of control for administrative app', style: TextStyle(fontSize: 16,color: Colors.white),),
          ],
        ),
      ),
    );
    
  }
}