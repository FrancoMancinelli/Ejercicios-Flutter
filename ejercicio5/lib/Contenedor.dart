import 'package:flutter/material.dart';
 
class Contenedor extends StatelessWidget {
 
  final color;
  final alto;
  final ancho;
  final texto;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
 
  Contenedor( this.color, this.alto, this.ancho, this.texto, this.paddingLeft, this.paddingTop, this.paddingRight, this.paddingBottom );
 
  @override
  Widget build(BuildContext context) {
	return 
  Transform.rotate(
    angle: 4,
    child: Container(
  	color: this.color,
	  width: this.ancho,
  	height: this.alto,

    padding: EdgeInsets.fromLTRB(this.paddingLeft, this.paddingTop, this.paddingRight, this.paddingBottom),
  
  	child: Center(
    	child: Text(this.texto),
  	),
	),
  );
  }


  
 
}
