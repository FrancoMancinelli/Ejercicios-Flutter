import 'package:flutter/material.dart';
import 'Contenedor.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return MaterialApp(
    	title: 'ejemplo de iconos',
    	home: Scaffold(
        	appBar: AppBar(
          	title: Center(
            	child: Text('Ejemplo de Container'),
          	),
        	),
        	body: Padding(
            padding: EdgeInsets.only(top: 50, left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              	Contenedor(Colors.cyan, 120.0, 120.0, 'azul', 20.0, 5.0, 0.0, 0.0),
                      const SizedBox(width: 40,),

              	Contenedor(Colors.pink, 100.0, 100.0, 'rosa', 50.0, 30.0, 0.0, 0.0),
                      const SizedBox(width: 40,),

              	Contenedor(Colors.green, 110.0, 110.0, 'verde', 70.0, 60.0, 0.0, 0.0),
            	]
        	),
    	),
      ),
	);
  }
}


