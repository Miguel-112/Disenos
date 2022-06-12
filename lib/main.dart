import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/inicio_page.dart';
import 'package:disenos/src/pages/scroll_pege.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'inicio',
      routes: {
        'basico': (BuildContext context) => Basicopage(),
        'scroll': (BuildContext context) => scrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
        'inicio': (BuildContext context) => inicio(),
      },
    );
  }
}
