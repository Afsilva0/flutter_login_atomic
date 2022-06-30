import 'package:flutter/material.dart';

import 'package:flutter_login_atomico/presentacion/modelo_atomico/organismos/cuerpo_inicio_sesion_organismo.dart';
import 'package:flutter_login_atomico/presentacion/modelo_atomico/atomos/fondo_atomo.dart';

class LoginTemplate extends StatelessWidget {
  const LoginTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        PurpleBox(
          colorPrimario: Colors.blueAccent,
          colorSegundario: Colors.blueAccent.shade400,
        ),
        HeaderIcon(
            icon: Icon(Icons.person_pin, color: Colors.white, size: 150)),
        Center(child: SingleChildScrollView(child: BodyInicioSesionWidget())),
      ])),
    );
  }
}
