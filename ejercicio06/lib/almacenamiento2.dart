import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CrudApp(),
    );
  }
}

class CrudApp extends StatefulWidget {
  @override
  _CrudAppState createState() => _CrudAppState();
}

class _CrudAppState extends State<CrudApp> {
  late Future<Database> database;

  @override
  void initState() {
    super.initState();
    database = initializeDatabase();
  }

  Future<Database> initializeDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'tasks.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tasks(id INTEGER PRIMARY KEY, name TEXT, completed INTEGER)',
        );
      },
      version: 1,
    );
  }

  Future<void> crearTarea(String name) async {
    final db = await database;
    await db.insert('tasks', {'name': name, 'completed': 0},
        conflictAlgorithm: ConflictAlgorithm.replace);
    setState(() {});
  }

  Future<List<Map<String, dynamic>>> obtenerTareas() async {
    final db = await database;
    return await db.query('tasks');
  }

  Future<void> actualizarTarea(int id, int completed) async {
    final db = await database;
    await db.update(
      'tasks',
      {'completed': completed == 1 ? 0 : 1},
      where: 'id = ?',
      whereArgs: [id],
    );
    setState(() {});
  }

  Future<void> eliminarTarea(int id) async {
    final db = await database;
    await db.delete(
      'tasks',
      where: 'id = ?',
      whereArgs: [id],
    );
    setState(() {});
  }

  // UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD con Sqlite')),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: obtenerTareas(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final task = snapshot.data![index];
              return ListTile(
                  title: Text(task['name']),
                  trailing: IconButton(
                      onPressed: () {
                        eliminarTarea(task['id']);
                      },
                      icon: Icon(Icons.delete)),
                  leading: IconButton(
                      onPressed: () {
                        actualizarTarea(task['id'], task['completed']);
                      },
                      icon: Icon(task['completed'] == 1
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked)));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final name = await showDialog<String>(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Crea una nueva tarea'),
                    content: TextField(
                      onSubmitted: Navigator.of(context).pop,
                    ),
                  ));

          if (name != null && name.isNotEmpty) {
            await crearTarea(name);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
