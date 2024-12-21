import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Preferencias(),
    );
  }
}

class Preferencias extends StatefulWidget {
  @override
  _PreferenciasState createState() => _PreferenciasState();
}

class _PreferenciasState extends State<Preferencias> {
  // Variables para guardar mi seleccion.

  String? genero = 'Masculino';
  String? tipoCuenta = 'Gratuita';
  double presupuesto = 100;
  RangeValues horasDisponible = RangeValues(8, 16);
  String? residencia = 'Mexico';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Configuracion de Usuario')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                // radio Buttons
                Text('Genero: ', style: TextStyle(fontSize: 20)),
                Column(
                  children: ['Masculino', 'Femenino', 'Binario']
                      .map((value) => RadioListTile<String>(
                            title: Text(value),
                            value: value,
                            groupValue: genero,
                            onChanged: (generoActualizado) {
                              setState(() {
                                genero = generoActualizado;
                              });
                            },
                          ))
                      .toList(),
                ),
                // RadioListTile
                Text('Tipo de cuenta: ', style: TextStyle(fontSize: 20)),
                RadioListTile(
                  title: Text('Gratuita'),
                  value: 'Gratuita',
                  groupValue: tipoCuenta,
                  onChanged: (value) {
                    setState(() {
                      tipoCuenta = value;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Premium'),
                  value: 'Premium',
                  groupValue: tipoCuenta,
                  onChanged: (value) {
                    setState(() {
                      tipoCuenta = value;
                    });
                  },
                ),
                // Slider
                Text('Presupuesto mensual: \$${presupuesto.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 20)),
                Slider(
                  value: presupuesto,
                  min: 0,
                  max: 500,
                  onChanged: (presupuestoActualizado) {
                    setState(() {
                      presupuesto = presupuestoActualizado;
                    });
                  },
                ),
                Text('Numero de horas de trabajo:',
                    style: TextStyle(fontSize: 20)),
                // Range Slider
                RangeSlider(
                  values: horasDisponible,
                  min: 0,
                  max: 40,
                  onChanged: (actualizacionHoras) {
                    setState(() {
                      horasDisponible = actualizacionHoras;
                    });
                  },
                ),
                Text('Pais de Residencia:', style: TextStyle(fontSize: 20)),
                //DropDown
                DropdownButton(
                    value: residencia,
                    onChanged: (paisActualizado) {
                      setState(() {
                        residencia = paisActualizado;
                      });
                    },
                    items: [
                      'México',
                      'Estados Unidos',
                      'España',
                      'Argentina',
                      'Alemania'
                    ]
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList()),
                // Boton de guardado
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Text('Preferencia guardadas con exito'),
                              content: Text(
                                  'Genero: $genero\nCuenta: $tipoCuenta\nPresupuesto: \$${presupuesto.toStringAsFixed(0)}\nHoras: ${horasDisponible.start.toInt()} - ${horasDisponible.end.toInt()}\nPais: $residencia')));
                    },
                    child: Text('Guardar preferencias'))
              ],
            )));
  }
}
