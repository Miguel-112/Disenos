// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class scrollPage extends StatelessWidget {
  const scrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: [_colorFondo(), _imagenFondo(), _texto()],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
          child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
        ),
        onPressed: () {},
      )),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  _imagenFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/1.png'),
          fit: BoxFit.cover,
        ));
  }

  Widget _texto() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: estiloTexto,
          ),
          Text(
            'Miercoles',
            style: estiloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
