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
      title: 'Ejercicio 2',
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
    return Scaffold(appBar: AppBar(title: Text('Ejercicio 2')),
    body: Row(
      children: [
        //El expanded es una posible solución para evitar el desbordamiento de texto
        Expanded(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt consequat sapien, non vehicula tellus porttitor in. Fusce diam eros, ullamcorper id lectus egestas, elementum pulvinar nulla. Sed blandit rutrum metus, vel sodales nibh consectetur eget. Aenean eget arcu velit. Praesent iaculis orci justo, non venenatis diam placerat a. Duis pulvinar pulvinar accumsan. Proin id blandit nunc. Praesent id felis ac risus blandit dapibus. Vivamus sit amet dictum sem. Curabitur lobortis tellus tellus.', style: TextStyle(fontFamily: 'SyneMono'),)),
      ],
    ));
  }

}


