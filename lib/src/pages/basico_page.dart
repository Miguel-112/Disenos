import 'package:flutter/material.dart';

class Basicopage extends StatelessWidget {
  final estilotitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Crear_Imagen(),
          CrearTitulo(),
          CrearAcciones(),
          crearTexto(),
          crearTexto(),
          crearTexto(),
          crearTexto()
        ],
      ),
    ));
  }

  Widget CrearTitulo() {
    return SafeArea(
      //nos indica desplegar la imformacion en un espacio
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, //aliniamo asia la izquierda
                children: [
                  Text('Lago con un puente', style: estilotitulo),
                  SizedBox(height: 7.0),
                  Text('un lago pro en america', style: estilosubtitulo)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget Crear_Imagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9u6QquwBbP5iM0xWeboxTeaCn_Olab0DsNQ&usqp=CAU'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget CrearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        accion(Icons.call, 'CALL'),
        accion(Icons.near_me, 'Route'),
        accion(Icons.share, 'share'),
      ],
    );
  }

  Widget crearTexto() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'Aliqua eu et cupidatat enim velit. Sunt adipisicing consequat velit quis nisi eu aliquip cupidatat nostrud dolore deserunt. Aute pariatur est Lorem et amet mollit exercitation enim. Elit aliqua veniam do laborum. Minim dolor esse enim dolore adipisicing amet cupidatat voluptate. Eu qui ullamco Lorem sunt.',
            textAlign: TextAlign.justify,
          )),
    );
  }

  Widget accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }
}
