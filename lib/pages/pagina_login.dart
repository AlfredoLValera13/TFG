import 'package:flutter/material.dart';
import 'package:tfg_test/pages/pagina_registro.dart';
import 'package:tfg_test/utils/app_colors.dart';

class PaginaLogin extends StatefulWidget {
  @override
  _PaginaLoginState createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  void _login(BuildContext context) {
    // Implementar lógica de autenticación con Firebase
    // FirebaseAuth.instance.signInWithEmailAndPassword(
    //   email: emailController.text,
    //   password: passwordController.text,
    // ).then((user) {
    //   Navigator.of(context).pushReplacementNamed('/pagina_principal');
    // }).catchError((error) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('Error: ${error.message}')),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
              obscureText: _obscureText,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _login(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              child: const Text('Iniciar Sesión'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaRegistro()));
              },
              child: const Text('Crear una cuenta'),
            ),
          ],
        ),
      ),
    );
  }
}