import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({super.key});

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 9'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 225,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                Align(
                  child: ElevatedButton.icon(
                    label: const Text('Press Me'),
                    icon: const Icon(Icons.radio_button_checked),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(244, 16, 185, 31)),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  child: OutlinedButton(
                    child: const Text('Un Botón'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 96, 99, 128),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 32, 31, 32), width: 3),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  child: ElevatedButton(
                    child: const Text('Otro Botón'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 15, 15, 15),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  child: IconButton(
                    tooltip: 'Home',
                    icon: const Icon(Icons.home),
                    iconSize: 30,
                    color: Color.fromARGB(500, 23, 142, 175),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  child: PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'a',
                          child: Text('Opción A'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'b',
                          child: Text('Opción B'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'c',
                          child: Text('Opción C'),
                        ),
                      ];
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  child: FloatingActionButton(
                    child: IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      iconSize: 30,
                      color: Color.fromARGB(244, 255, 255, 255),
                      onPressed: () {},
                    ),
                    backgroundColor: Color.fromARGB(255, 179, 15, 15),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
