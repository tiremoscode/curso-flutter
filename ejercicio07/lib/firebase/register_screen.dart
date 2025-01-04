import 'package:flutter/material.dart';
import 'auth_service.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Registro usuarios')),
        body: Padding(
            padding: EdgeInsets.all(16.00),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Contraseña'),
                  obscureText: true,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  child: Text('Registrar Usuario'),
                  onPressed: () async {
                    final email = _emailController.text;
                    final password = _passwordController.text;

                    final user = await _authService.register(email, password);
                    if (user != null) {
                      print('registro exitoso ${user.email}');
                    }
                  },
                ),
              ],
            )));
  }
}
