import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de fila y columnas anidadas')),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIcon(), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          buildIcon(), 
          buildIcon()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            buildIcon(), 
            buildIcon(), 
            buildIcon()]
          )],
          )
          );
  }

  Widget buildIcon() {
    return Column(children: [Icon(Icons.phone_callback_rounded), 
    Text('Télefono')],);
  }

}


