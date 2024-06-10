import 'package:flutter/material.dart';
import 'dart:async';

class PaginaPago extends StatefulWidget {
  @override
  _PaginaPagoState createState() => _PaginaPagoState();
}

class _PaginaPagoState extends State<PaginaPago> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _localidadController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _obscureText = true;

  Future<void> _realizarPago() async {
    if (_formKey.currentState?.validate() ?? false) {
      // Simulate a loading screen
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      // Simulate a delay for the payment process
      await Future.delayed(const Duration(seconds: 2));

      // Close the loading screen
      Navigator.of(context).pop();

      // Show success screen
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 60),
                SizedBox(height: 16),
                Text('¡Éxito!', style: TextStyle(fontSize: 24)),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(); // Go back to the main screen
                },
                child: const Text('Aceptar'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu nombre';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _apellidosController,
                  decoration: const InputDecoration(labelText: 'Apellidos'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tus apellidos';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _telefonoController,
                  decoration: const InputDecoration(labelText: 'Número de Teléfono'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu número de teléfono';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _direccionController,
                  decoration: const InputDecoration(labelText: 'Dirección'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu dirección';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _localidadController,
                  decoration: const InputDecoration(labelText: 'Localidad'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu localidad';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(
                      value: 'VISA',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/visa-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('VISA'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'MasterCard',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/Mastercard-logo-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('MasterCard'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Apple Pay',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/applepayLogo.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('Apple Pay'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Google Pay',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/googlepayLogo-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('Google Pay'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'PayPal',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/PayPalLogo-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('PayPal'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Bizum',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/bizumLogo-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('Bizum'),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'UnionPay',
                      child: Row(
                        children: [
                          Image.asset('lib/assets/images/pagas/UnionPayLogo-Photoroom.png', width: 24),
                          const SizedBox(width: 10),
                          const Text('UnionPay'),
                        ],
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                  decoration: const InputDecoration(labelText: 'Opción de Pago'),
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor, selecciona una opción de pago';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: _realizarPago,
                    child: const Text('Realizar Pago'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}