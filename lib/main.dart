import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      //statusBarColor: Colors.white //Color de la barra
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        //Creo que no es lo mejor, mejor archivo aparte, mirar componentes y pelis
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage()
      },
      home: Scaffold(),
    );
  }
}
