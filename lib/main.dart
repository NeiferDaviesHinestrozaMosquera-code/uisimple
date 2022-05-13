
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uisimple/routes/routes.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Diseño Simple',
      initialRoute: 'HomeScreen',
      routes:
       {
         'BasicDiseño' : (_) => BasicDisenoScreen() ,
         'ScrollDiseño' : (_) => ScrollScreen(),
         'HomeScreen' : (_) => HomeScreen(),
        },
      );
  }
}





