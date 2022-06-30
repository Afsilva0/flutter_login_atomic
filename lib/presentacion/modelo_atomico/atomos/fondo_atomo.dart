import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  HeaderIcon({this.icon});

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: icon,
    );
  }
}

/*  Positioned(child: _Bubble(), top: 90, left: 30),
          Positioned(child: _Bubble(), top: -40, left: -30),
          Positioned(child: _Bubble(), top: -50, right: -20),
          Positioned(child: _Bubble(), bottom: -50, left: 10),
          Positioned(child: _Bubble(), bottom: 120, right: 20),*/

class PurpleBox extends StatelessWidget {
  final Color colorPrimario;
  final Color colorSegundario;
  final Widget? child;
  PurpleBox(
      {required this.colorPrimario, required this.colorSegundario, this.child});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        decoration: _purpleBackground(),
        child: child);
  }

  BoxDecoration _purpleBackground() => BoxDecoration(
      gradient: LinearGradient(colors: [colorPrimario, colorSegundario]));
}

class Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
