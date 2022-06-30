import 'package:flutter/material.dart';
import 'package:flutter_login_atomico/presentacion/paginas/inicio_sesion_pagina.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prueba",
      initialRoute: "login",
      routes: {"login": (context) => LoginPages()},
    );
  }
}
