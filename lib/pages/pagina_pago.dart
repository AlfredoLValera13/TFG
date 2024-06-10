import 'package:flutter/material.dart';
import 'dart:async';

const List<String> paises = [
  "Afganistán", "Albania", "Alemania", "Andorra", "Angola", "Antigua y Barbuda", "Arabia Saudita", "Argelia", "Argentina", "Armenia", 
  "Australia", "Austria", "Azerbaiyán", "Bahamas", "Bangladés", "Barbados", "Baréin", "Bélgica", "Belice", "Benín", "Bielorrusia", 
  "Birmania", "Bolivia", "Bosnia y Herzegovina", "Botsuana", "Brasil", "Brunéi", "Bulgaria", "Burkina Faso", "Burundi", "Bután", 
  "Cabo Verde", "Camboya", "Camerún", "Canadá", "Catar", "Chad", "Chile", "China", "Chipre", "Ciudad del Vaticano", "Colombia", 
  "Comoras", "Congo", "Corea del Norte", "Corea del Sur", "Costa de Marfil", "Costa Rica", "Croacia", "Cuba", "Dinamarca", 
  "Dominica", "Ecuador", "Egipto", "El Salvador", "Emiratos Árabes Unidos", "Eritrea", "Eslovaquia", "Eslovenia", "España", 
  "Estados Unidos", "Estonia", "Esuatini", "Etiopía", "Filipinas", "Finlandia", "Fiyi", "Francia", "Gabón", "Gambia", "Georgia", 
  "Ghana", "Granada", "Grecia", "Guatemala", "Guinea", "Guinea-Bisáu", "Guinea Ecuatorial", "Guyana", "Haití", "Honduras", 
  "Hungría", "India", "Indonesia", "Irak", "Irán", "Irlanda", "Islandia", "Islas Marshall", "Islas Salomón", "Israel", "Italia", 
  "Jamaica", "Japón", "Jordania", "Kazajistán", "Kenia", "Kirguistán", "Kiribati", "Kosovo", "Kuwait", "Laos", "Lesoto", "Letonia", 
  "Líbano", "Liberia", "Libia", "Liechtenstein", "Lituania", "Luxemburgo", "Madagascar", "Malasia", "Malaui", "Maldivas", "Malí", 
  "Malta", "Marruecos", "Mauricio", "Mauritania", "México", "Micronesia", "Moldavia", "Mónaco", "Mongolia", "Montenegro", "Mozambique", 
  "Namibia", "Nauru", "Nepal", "Nicaragua", "Níger", "Nigeria", "Noruega", "Nueva Zelanda", "Omán", "Países Bajos", "Pakistán", 
  "Palaos", "Panamá", "Papúa Nueva Guinea", "Paraguay", "Perú", "Polonia", "Portugal", "Reino Unido", "República Centroafricana", 
  "República Checa", "República Dominicana", "República del Congo", "Ruanda", "Rumanía", "Rusia", "Samoa", "San Cristóbal y Nieves", 
  "San Marino", "San Vicente y las Granadinas", "Santa Lucía", "Santo Tomé y Príncipe", "Senegal", "Serbia", "Seychelles", "Sierra Leona", 
  "Singapur", "Siria", "Somalia", "Sri Lanka", "Sudáfrica", "Sudán", "Sudán del Sur", "Suecia", "Suiza", "Surinam", "Tailandia", 
  "Tanzania", "Tayikistán", "Timor Oriental", "Togo", "Tonga", "Trinidad y Tobago", "Túnez", "Turkmenistán", "Turquía", "Tuvalu", 
  "Ucrania", "Uganda", "Uruguay", "Uzbekistán", "Vanuatu", "Venezuela", "Vietnam", "Yemen", "Yibuti", "Zambia", "Zimbabue"
];

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
  String? _paisSeleccionado;
  String? _opcionPagoSeleccionada;

  Future<void> _realizarPago() async {
    if (_formKey.currentState?.validate() ?? false) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      await Future.delayed(const Duration(seconds: 2));

      Navigator.of(context).pop();

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
                  Navigator.of(context).pop();
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
                  value: _paisSeleccionado,
                  items: paises.map((String pais) {
                    return DropdownMenuItem(
                      value: pais,
                      child: Text(pais),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _paisSeleccionado = value;
                    });
                  },
                  decoration: const InputDecoration(labelText: 'País'),
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor, selecciona tu país';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField(
                  value: _opcionPagoSeleccionada,
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
                  onChanged: (value) {
                    setState(() {
                      _opcionPagoSeleccionada = value;
                    });
                  },
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
