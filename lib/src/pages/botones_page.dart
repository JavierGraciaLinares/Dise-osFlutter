import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child:
                  Column(children: <Widget>[_titulos(), _botonesRedondeados()]),
            )
          ],
        ),
        bottomNavigationBar: _botomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiante = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue,
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ],
          )),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 350.0,
          width: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ]),
              borderRadius: BorderRadius.circular(90.0)),
        ));

    return Stack(
      children: <Widget>[
        gradiante,
        Positioned(
          child: cajaRosa,
          top: -120.0,
          left: -65.0,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Javivi Programando',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Y si dejamos de programar\nNos vamos de fiesta?',
                style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _botomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent, //Seleccionado
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        //fixedColor: Colors.pink, //¿Creo que seleccionado? No se que es, pero se hace en Theme para cambiar estilo
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Container()),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Container())
        ],
      ),
    );
  }

  _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [_crearBotonRedondeado(Colors.green, Icons.play_arrow,"Hola"), _crearBotonRedondeado(Colors.pink, Icons.person,"Pauli")]),
        TableRow(children: [_crearBotonRedondeado(Colors.blue,Icons.calendar_today,"Cuando"), _crearBotonRedondeado(Colors.red,Icons.near_me,"Vamos")]),
        TableRow(children: [_crearBotonRedondeado(Colors.orange,Icons.done,"Correr"), _crearBotonRedondeado(Colors.red,Icons.people,"Juntos")])
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0,sigmaY: 0), //Degradado, consume mucho
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0),
            CircleAvatar(
              radius: 35.0,
              backgroundColor: color,
              child: Icon(
                icono,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Text(texto, style: TextStyle(color: color,fontSize: 15.0)),
            SizedBox(height: 5.0)
          ],
        ),
      ),
    );
  }
}
