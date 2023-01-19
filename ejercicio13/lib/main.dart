import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 13',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String mensaje = '';
  TextEditingController controller = TextEditingController();
  int numeroSecreto = Random().nextInt(100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 13'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Dime un número del 0 al 100',
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                controller: controller,
                decoration:
                    const InputDecoration(hintText: 'Escribe un número'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                child: const Text('Comprobar'),
                onPressed: () {
                  if (int.parse(controller.text) == numeroSecreto) {
                    setState(() {
                    mensaje = '¡Correcto! Era el número $numeroSecreto';
                    });
                  } else if (int.parse(controller.text) < numeroSecreto) {
                    setState(() {
                    mensaje = 'El número secreto es mayor';
                    });
                  } else {
                    setState(() {
                    mensaje = 'El número secreto es menor';
                    });
                  }
                  controller.clear();
                },
              ),
            ),
            Text(
              mensaje,
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
