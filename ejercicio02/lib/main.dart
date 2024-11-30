/* Ejercicio
Crear una tarjeta que mostrara la foto del usuario, su nombre, su cargo y 3 botone
de accion alineado de manera horizontal

Stack. Para superponer una imagen circular sobre un contenedor de fondo.
Column. Usarla para organizar lo elementos de texto y los botones de accion (manera vertical).
Row. Usar para alinear horizontalmente los botones de accion dentro de la columna.

Sombras y bordes a la tarjeta.
funcionalidad a los botones
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: PerfilUsuario()));
}

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              width: 300,
              height: 150,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Foto de Perfil
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/a/ae/Michael_Jordan_in_2014.jpg'),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Icon(Icons.edit, color: Colors.green))
                    ],
                  ),
                  // Datos del Usuario
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Michael Jordann',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const Text('Basquetbolista',
                          style: TextStyle(fontSize: 15, color: Colors.green)),
                      // Botones de accion
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.phone),
                              color: Colors.blue,
                              onPressed: () {}),
                          IconButton(
                              icon: const Icon(Icons.email),
                              color: Colors.green,
                              onPressed: () {}),
                          IconButton(
                              icon: const Icon(Icons.person),
                              color: Colors.red,
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ))
                ],
              ))),
    );
  }
}
