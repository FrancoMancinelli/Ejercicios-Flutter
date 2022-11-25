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
      title: 'Ejercicio 3',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Ejercicio 3')),
    backgroundColor: Color.fromARGB(255, 189, 247, 197),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [Container(
        height: 350.0,
      width: 350.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/pandarojo.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
        ),
      ),
        const Text("Panda Rojo", style: TextStyle(fontSize: 50, fontFamily: 'SyneMono', color: Color.fromARGB(255, 155, 61, 17), fontWeight: FontWeight.bold))])
        );
  }

}


