import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollPage extends StatelessWidget {
  final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  _pagina1() {
    return Stack(
      children: <Widget>[_colorFondoPag1(), _imagenFondoPag1(), _textosPag1()],
    );
  }

  _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.white,
          textColor: Colors.black,
          child: Padding(child: Text("Bienvenido", style: TextStyle(fontSize: 20.0)),padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _colorFondoPag1() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondoPag1() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover,
        ));
  }

  Widget _textosPag1() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text('11º', style: estiloTexto),
          Text('Sábado', style: estiloTexto),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 85.0)
        ],
      ),
    );
  }
}
