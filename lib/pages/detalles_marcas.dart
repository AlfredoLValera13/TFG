import 'package:flutter/material.dart';
import 'package:tfg_test/utils/app_colors.dart';
import 'package:tfg_test/pages/pagina_detalles_productos.dart';

class DetallesMarcas extends StatelessWidget {
  final String nombreMarca;

  DetallesMarcas({required this.nombreMarca});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombreMarca),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lore de $nombreMarca...',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Producto $index'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaDetallesProductos(nombreProducto: 'Producto $index')));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
