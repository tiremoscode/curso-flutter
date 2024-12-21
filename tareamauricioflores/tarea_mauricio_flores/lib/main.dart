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
      home: formularioDatos()
    );
  }
}

class formularioDatos extends StatefulWidget{
  const formularioDatos({super.key});
  @override
  _formularioDatos createState() => _formularioDatos();
}

class _formularioDatos extends State<formularioDatos>{
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _buttonPresionado = false;
  final FocusNode myfocusNombre = FocusNode();
  final FocusNode myfocusEmail = FocusNode();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Práctica'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nombreController,
                focusNode: myfocusNombre,
                decoration: const InputDecoration(labelText: 'Nombre',border: OutlineInputBorder()),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Por favor ingresa valor';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: _emailController,
                focusNode: myfocusEmail,
                decoration: const InputDecoration(labelText: 'Correo electrónico'),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Por favor ingresa un correo electrónico';
                  }
                  else if(!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9.]+\.[a-zA-Z]+').hasMatch(value)){
                    return 'Regresa un correo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _enviarFormulario();
                    }, 
                    child: const Text('Enviar datos'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _buttonPresionado ? Colors.blue : Colors.redAccent
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      _cancelarformulario();
                    }, 
                    child: const Text('Cancelar')
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }

// LIMPAR INPUTS
  void _limpiarInputs(){
    //_nombreController.clear();
    //_emailController.clear();
    _formKey.currentState!.reset();
    //_formKey.currentState!.initState();
    //_formKey.currentState!.reassemble();
    //_formKey.initState();
    //FocusScope.of(context).requestFocus(myfocus);
    FocusScope.of(context).unfocus();
    setState(() {
      _buttonPresionado=false;
    });
  }

// ENVIAR FORMULARIO
  void _enviarFormulario(){
    String nombre = _nombreController.text;
    String email = _emailController.text;
    setState(() {
      _buttonPresionado=true;
    });
    if(!_formKey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Datos Incorrectos')));
      return;  
    }
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Datos Guardados Nombre: $nombre , Email: $email')));
    _limpiarInputs();
  }

// CANCELAR FORMULARIO
  void _cancelarformulario(){
    _limpiarInputs();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Se cancelo')));
    
  }
  
}