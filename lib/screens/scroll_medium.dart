
import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors:[
               Color(0xff5EE8C5),
               Color(0xff30BAD6),
          ] )
        );

        
    return Scaffold(
      backgroundColor: Color(0xff30BAD6),
      body:Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      )
   );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          //BACKGROUND
          Background(),
    
          MianContent()
        ],
    );
  }
}

class MianContent extends StatelessWidget {
  const MianContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = const TextStyle(fontSize: 70 , fontWeight: FontWeight.bold , color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('11°', style: textStyle,),
          Text('Miercoles' , style: textStyle),
          Expanded(child: Container()),
          //EXPANDED
          Icon(Icons.keyboard_arrow_down , size: 100,color:Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff30BAD6) ,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image:AssetImage('assets/scroll-1.png'), 
      )
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff30BAD6) ,
      child: Center(  
        child:TextButton(onPressed: () {}, 
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 50),
          child: Text('Hola Davies', style: TextStyle(color: Colors.white , fontSize: 30),),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff0098FA),
          shape: StadiumBorder(),
          ),
        ) ,
      ),
    );
  }
}