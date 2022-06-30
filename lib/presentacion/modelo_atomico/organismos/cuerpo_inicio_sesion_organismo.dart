import 'package:flutter/material.dart';

import 'package:flutter_login_atomico/presentacion/modelo_atomico/moleculas/formulario_inicio_sesion_molecula.dart';

class BodyInicioSesionWidget extends StatelessWidget {
  const BodyInicioSesionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      width: mediaQueryData.size.width * 0.80,
      child: FormLogin(),
    );
  }
}
