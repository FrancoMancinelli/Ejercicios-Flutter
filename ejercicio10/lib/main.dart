import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 10',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Animación Flutter',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late AnimationController animationController;

   @override
   void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    animationController.repeat();
    super.initState();
   }

   @override
   void dispose() {
    animationController.dispose();
    super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTapDown: (tapDetails){
            animationController.stop();
          },

          onTapUp: (tapDetails){
            animationController.repeat();
          },

          child: RotationTransition(
            alignment: Alignment.center,
            turns: animationController,
            child: Image.asset('assets/ruleta.png'),
              ),
        ),
      ),
    );
  }

}