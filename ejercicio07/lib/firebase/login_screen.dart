import 'package:flutter/material.dart';
import 'auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login usuarios')),
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
                  child: Text('Ingresar sesiòn'),
                  onPressed: () async {
                    final email = _emailController.text;
                    final password = _passwordController.text;

                    final user = await _authService.login(email, password);
                    if (user != null) {
                      print('Login exitoso ${user.email}');
                    }
                  },
                ),
              ],
            )));
  }
}
