import 'package:flutter/material.dart';
import 'package:uisimple/widgets/windgets_routes.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( ///ESTO ES PARA METER WIDGETS ENCIMA DE OTROS
        children: [
            //COLOR Y DISEÑO DE FONDO
            Background(),
            //DISEÑO Y CUERPO DE LA APP
            _HomeBody(),

        ],
     ),
     bottomNavigationBar: BottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(  
        children: [
            //TITULOS DE LA APP
            PageTitle(),

            //CARD TABLE CON BOTONES
            CardTable(),
        ],
      ),
    );
  }
}