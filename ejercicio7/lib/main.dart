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
      title: 'Ejercicio 7',
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
    return Scaffold(appBar: AppBar(title: Text('Ejercicio 7')),
    body: Container(),
    drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: const [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
                  image: AssetImage("assets/menuflutter.jpg"),
                     fit: BoxFit.cover)


        ),
        child: Padding(
          padding: EdgeInsets.only(top: 90),
          child: Text('Menú',
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
      ListTile(
        title: Text('Inicio'),
      ),
      ListTile(
        title: Text('Perfil'),
      ),
      ListTile(
        title: Text('Noticias'),
      ),
      ListTile(
        title: Text('Información'),
      ),
      ListTile(
        title: Text('Ajustes'),
      ),
    ],
  ),
),
);
 }

}


