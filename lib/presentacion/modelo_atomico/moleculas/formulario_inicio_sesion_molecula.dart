import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

// Import Widget
import 'package:flutter_login_atomico/presentacion/modelo_atomico/atomos/boton_atomo.dart';
import 'package:flutter_login_atomico/presentacion/modelo_atomico/atomos/campo_atomo.dart';
import 'package:flutter_login_atomico/presentacion/modelo_atomico/atomos/tarjeta_atomo.dart';

class FormLogin extends StatefulWidget {
  FormLogin({Key? key}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final FormGroup form = fb.group(<String, Object>{
    'correo': ['', Validators.required],
    'clave': ['', Validators.required, Validators.minLength(6)],
  });

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: ReactiveFormBuilder(
          form: () => form,
          builder: (context, form, child) {
            return Column(
              children: [
                Text(
                  "Iniciar sesión",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                InputTextWidget(
                  nombreFormulario: "correo",
                  etiquetaCampo: "Usuario",
                  ejemplo: "ruben@gmail.com",
                  tipoCampo: TextInputType.text,
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    size: 24,
                  ),
                  errors: (errors) => {
                    ValidationMessage.required: 'Name must not be Titulo',
                  },
                ),
                SizedBox(height: 15),
                InputPasswordWidget(
                  nombreFormulario: "clave",
                  etiquetaCampo: "Contraseña",
                  ejemplo: "********",
                  tipoCampo: TextInputType.text,
                  icon: FaIcon(
                    FontAwesomeIcons.lock,
                    size: 24,
                  ),
                ),
                SizedBox(height: 25),
                ButtonWidget(
                  texto: "Iniciar sesión",
                  color: Colors.blueAccent,
                  accion: () => {
                    if (form.valid)
                      {print(form.value)}
                    else
                      {print("formulario malo")}
                  },
                )
              ],
            );
          }),
    );
  }
}
