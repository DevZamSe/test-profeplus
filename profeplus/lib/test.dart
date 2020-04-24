import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 80),
          _Texto(),
          _InputTexto(),
          _Button(context),
          _ButtonIos()

        ],
      ),
    );
  }

  Widget _Texto(){
    return Text('Hola Mundo', style: TextStyle(fontSize: 50));
  }

  Widget _InputTexto(){
    return TextFormField(
      obscureText: true,
    );
  }

  Widget _Button(BuildContext context){
    return RaisedButton(
      child: Icon(Icons.adb),
      color: Colors.blue,
      onPressed: () => Navigator.pushNamed(context, 'mapa'),
    );
  }

  Widget _ButtonIos(){
    return CupertinoButton(
      child: Text('Hola'),
      color: Colors.cyanAccent,
      onPressed: () => Navigator.pushNamed(context, 'home'),
    );
  }

}