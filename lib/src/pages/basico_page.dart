import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //body: Column(//Peta si no cabe en la pantalla
        // body: ListView(// Barra notificaciones se ve mal
        body: SingleChildScrollView(
      //Así para los que tienen Notch
      child: Column(
        children: <Widget>[
          _rowImagen(),
          _rowLugar(),
          _rowAcciones(),
          _rowTexto(),
        ],
      ),
    ));
  }

  /*
  //A mi se me veia bien en vertical y en horizontal
  Widget _rowImagen() {
    return Image(
        image: NetworkImage(
            'https://wallpaperplay.com/walls/full/4/9/d/13588.jpg'),
            fit: BoxFit.cover,);
  }*/
  Widget _rowImagen() {
    return Container(
      width: double.infinity, //Extiende imagen infinitametnte
      child: Image(
        image:
            NetworkImage('https://wallpaperplay.com/walls/full/4/9/d/13588.jpg'),
        height: 200.0, //Simular pequeña?
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _rowLugar() {
    return SafeArea(
      //SafeArea Controla los Notch
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Desierto montañoso',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Misterioso y maravilloso',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _rowAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearBotonAccion(Icons.call, 'Llamar'),
        _crearBotonAccion(Icons.near_me, 'Navegar'),
        _crearBotonAccion(Icons.share, 'Compartir')
      ],
    );
  }

  Widget _crearBotonAccion(IconData icono, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icono,
          size: 40.0,
          color: Colors.blue,
        ),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _rowTexto() {
    return SafeArea(
      //SafeArea controla Notch
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'Un desierto es un bioma de clima árido, donde las precipitaciones son escasas. Estos suelen poseer poca vida, pero eso depende del tipo de desierto; en muchos existe vida abundante, la vegetación se adapta a la poca humedad (matorral xerófilo) y la fauna usualmente se oculta durante el día para preservar humedad. El establecimiento de grupos sociales en los desiertos es complicado y requiere de una importante adaptación a las condiciones extremas que en ellos imperan. Los desiertos forman la zona más extensa de la superficie terrestre: con más de 50 millones de kilómetros cuadrados, ocupan casi un tercio de esta. De este total, 53 % corresponden a desiertos cálidos y 47 % a desiertos fríos.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
