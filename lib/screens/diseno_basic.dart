import 'package:flutter/material.dart';



class BasicDisenoScreen extends StatelessWidget {
  const BasicDisenoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, ///COLOR DE FONDO
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')), ///LLAMAR A LA IMAGEN
          
          //TITULO
          Title(),

          //Button Section
          ButtonSection(),

          ///Descripcion de texto 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.')),

          
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10), ///DISTANCIA ENTRE LOS ICONOS 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call',),
          CustomButton(icon: Icons.route, text: 'Route',),
          CustomButton(icon: Icons.share, text: 'Share',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;


  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon , color: Colors.blue,),
        Text(this.text , style: TextStyle(color: Colors.blue),)
      ],
      
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30 , vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column( //PARA TENER VARIOS CHILD SE DEBE TRABAJAR CON ROW O CON COLUMN
            crossAxisAlignment: CrossAxisAlignment.start, ///PARA COLOCAR EL TEXTO AL LADO IZQUIERDO
            children: [
              Text('Parque internacional NirobiLand' , style:  TextStyle(fontWeight: FontWeight.bold),), ///TITULO 
              Text('Planeta X , Sistema Solar Dos' ,style: TextStyle(color: Colors.black45),), ///SUBITTULO 
            ],
          ),

          Expanded(child: Container()), ///ESTE GENERA LA DIVISION QUE SE ENCUENTRA ENTRE EL TEXTO Y EL ICONO CON EL VALOR
          Icon(Icons.star , color: Colors.green,), ///IMAGEN DE LA ESTRELLA
          Text('41'), ///VALOR DE LA ESTRELLA

        ],
      ),
    );
  }
}