import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaDeUsuarios(),
    );
  }
}

class ListaDeUsuarios extends StatefulWidget {
  @override
  _ListaDeUsuariosState createState() => _ListaDeUsuariosState();
}

class _ListaDeUsuariosState extends State<ListaDeUsuarios> {
  List listaUsuarios = [];
  bool isLoading = false;

  // Metoo para conumir la API
  Future<void> obtenerUsuarios() async {
    print('obteniendo usuarios...');
    setState(() {
      isLoading = true;
    });

    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      print('Datos correctos');
      final data = json.decode(response.body);
      setState(() {
        listaUsuarios = data['data'];
      });
    } else {
      print('No se pudo conectar');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al cargar los usuarios')),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    obtenerUsuarios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista de Usuarios')),
        body: isLoading
            ? Center(child: Text('Cargando,espere por favor'))
            : ListView.builder(
                itemCount: listaUsuarios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(listaUsuarios[index]['avatar']),
                      ),
                      title: Text(
                          '${listaUsuarios[index]['first_name']} ${listaUsuarios[index]['last_name']}'),
                      subtitle: Text(listaUsuarios[index]['email']));
                },
              ));
  }
}
