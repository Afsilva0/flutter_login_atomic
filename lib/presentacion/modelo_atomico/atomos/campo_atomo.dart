import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    this.ejemplo,
    this.etiquetaCampo,
    required this.tipoCampo,
    this.icon,
    this.nombreFormulario,
    this.errors,
  }) : super(key: key);

  final String? nombreFormulario;
  final Map<String, String> Function(FormControl<String>)? errors;
  final String? ejemplo;
  final String? etiquetaCampo;
  final TextInputType tipoCampo;
  final FaIcon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReactiveTextField<String>(
          key: key,
          formControlName: nombreFormulario,
          keyboardType: tipoCampo,
          decoration: InputDecoration(
              hintText: ejemplo, labelText: etiquetaCampo, icon: icon),
          validationMessages: errors),
    );
  }
}

class InputPasswordWidget extends StatefulWidget {
  InputPasswordWidget(
      {Key? key,
      this.ejemplo,
      this.etiquetaCampo,
      required this.tipoCampo,
      this.icon,
      this.errors,
      this.nombreFormulario})
      : super(key: key);

  final String? nombreFormulario;
  final Map<String, String> Function(FormControl<String>)? errors;
  final String? ejemplo;
  final String? etiquetaCampo;
  final TextInputType tipoCampo;
  final FaIcon? icon;

  @override
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool _ocultar = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReactiveTextField<String>(
        key: widget.key,
        formControlName: widget.nombreFormulario,
        keyboardType: widget.tipoCampo,
        obscureText: _ocultar,
        decoration: InputDecoration(
            hintText: widget.ejemplo,
            labelText: widget.etiquetaCampo,
            icon: widget.icon,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _ocultar = !_ocultar;
                });
              },
              child: Icon(_ocultar ? Icons.visibility : Icons.visibility_off),
            )),
        validationMessages: widget.errors,
      ),
    );
  }
}
