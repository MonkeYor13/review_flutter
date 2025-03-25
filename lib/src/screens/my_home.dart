import 'package:flutter/material.dart';
//import '../../images_app.dart';
//import '../../mi_objetos.dart';
import '../../my_list_sports_wears.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});
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
      body: ListView.builder(
        itemCount: ropaDeportivaFemenina.length,
        itemBuilder: (context, index) {
          final ropa = ropaDeportivaFemenina[index];
          return ListTile(
            leading: Image.asset(ropa.imagen),
            title: Text(ropa.titulo),
            subtitle: Text(ropa.descripcion),
          );
        },
      ),
    );
  }
}
