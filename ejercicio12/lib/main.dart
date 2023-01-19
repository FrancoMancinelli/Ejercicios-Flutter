import 'package:ejercicio12/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: validator(),
  ));
}

class validator extends StatelessWidget {
validator({Key? key}) : super(key: key);

final GlobalKey<FormState> _key = new GlobalKey<FormState>();
final usercontroller = TextEditingController();
final passcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: usercontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Usuario',
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Porfavor ingrese un nombre de usuario';
                  } else if(value != 'admin') {
                    return 'Nombre de usuario incorrecto';
                  }
                  return null;
                }
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passcontroler,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Contraseña',
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Porfavor ingrese la contraseña';
                  } else if(value != 'pass') {
                    return 'Contraseña incorrecta';
                  }
                  return null;
                } 
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                  if(_key.currentState!.validate()) {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>home()));
                  }
                }, child: const Text('Validar')),
              )
            ],
          ),
        ),
      )
    );
  }
}