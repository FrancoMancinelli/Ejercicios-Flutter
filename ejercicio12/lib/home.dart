import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Bienvenido',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )
        )
      )
    );
  }
}