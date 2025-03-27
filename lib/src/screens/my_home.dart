import 'package:flutter/material.dart';
//import '../../images_app.dart';
//import '../../mi_objetos.dart';
//import '../../my_list_sports_wears.dart';
//import 'dart:async';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //creramos una lista de widgets cards
  final List<Widget> _paginas = [
    Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(Icons.directions_car), Text('Tarjeta 1')],
      ),
    ),
    Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(Icons.directions_bike), Text('Tarjeta 2')],
      ),
    ),
    Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Icon(Icons.directions_boat), Text('Tarjeta 3')],
      ),
    ),
  ];

  //creamos el controlador e indicamos donde va a comenzar
  final CarouselController controller = CarouselController(initialItem: 0);

  //agregamos la limpieza del controlador
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          'Nova Fit',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: SizedBox(
        //envolvemos el carousel en un sizedbox para darle una altura
        height: 300.0,
        child: CarouselView(
          controller: controller, //agregamos el controlador
          itemExtent: 300.0, //agregamos el ancho de la tarjeta
          shrinkExtent: 20.0, //agregamos el espacio entre las tarjetas
          //itemSnapping: true, //agregamos el desplazamiento de la tarjeta
          children: _paginas, //agregamos las tarjetas
        ),
      ),
    );
  }
}
