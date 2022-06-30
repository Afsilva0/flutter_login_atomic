import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String texto;
  final Color color;
  final Color? colorText;
  final double? tamano;
  final VoidCallback? accion;

  const ButtonWidget(
      {Key? key,
      required this.texto,
      required this.color,
      this.tamano,
      this.colorText,
      this.accion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          child: Center(
        child: Text(
          texto,
          style: TextStyle(fontSize: tamano, color: colorText ?? Colors.white),
        ),
      )),
      onPressed: () => accion!(),
    );
  }
}
