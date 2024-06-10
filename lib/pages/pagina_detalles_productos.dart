import 'package:flutter/material.dart';
import 'package:tfg_test/utils/app_colors.dart';

class PaginaDetallesProductos extends StatelessWidget {
  final String nombreProducto;

  const PaginaDetallesProductos({super.key, required this.nombreProducto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombreProducto),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Descripción del sabor: ...', style: TextStyle(fontSize: 16)),
            const Text('Calorías: ...', style: TextStyle(fontSize: 16)),
            const Text('Azúcares: ...', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accentColor,
              ),
              child: const Text('Añadir al Carrito'),
            ),
          ],
        ),
      ),
    );
  }
}
