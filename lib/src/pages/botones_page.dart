import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(children: [
              _titulos(),
              _botonesRedondeado(),
            ]),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: const LinearGradient(
              begin: const FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromARGB(52, 27, 139, 218),
            Color.fromARGB(31, 130, 15, 93),
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              const Color.fromARGB(235, 194, 57, 178),
              const Color.fromARGB(168, 187, 73, 175)
            ]),
            borderRadius: BorderRadius.circular(80.0)),
      ),
    );

    return Stack(
      children: [gradiente, Positioned(top: -100.0, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Classify tansaction',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Classify this tansaction into a particular category',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromARGB(182, 223, 217, 238),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromARGB(255, 230, 144, 32)))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bubble_chart,
                  size: 30.0,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 30.0,
                ),
                label: ''),
          ],
        ));
  }

  Widget _botonesRedondeado() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.white, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.white, Icons.directions, 'General'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.white, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.white, Icons.directions, 'General'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.white, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.white, Icons.directions, 'General'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.white, Icons.border_all, 'General'),
          _crearBotonRedondeado(Colors.white, Icons.directions, 'General'),
        ])
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.02, sigmaY: 0.02),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(83, 32, 6, 117),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(
                  color: color,
                ),
              ),
              SizedBox(
                height: 30.0,
              )
            ]),
      ),
    );
  }
}
