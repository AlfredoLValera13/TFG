import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/providers/favoritos_provider.dart';
import 'package:tfg_test/utils/app_colors.dart';
import 'package:tfg_test/pages/pagina_detalles_productos.dart';

class PaginaFavoritos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var favoritos = Provider.of<FavoritosProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Latas Favoritas'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: favoritos.length,
        itemBuilder: (context, index) {
          final favorito = favoritos[index];
          return ListTile(
            leading: Image.asset(favorito['image'], width: 50, height: 50),
            title: Text(favorito['name']),
            subtitle: Text("${favorito['price']}€"),
            trailing: TextButton(
              child: Text(
                'Eliminar de Favoritos',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Eliminar Favorito'),
                      content: Text('¿Desea eliminar esta lata de favoritos?'),
                      actions: [
                        TextButton(
                          child: Text('Sí'),
                          onPressed: () {
                            Provider.of<FavoritosProvider>(context, listen: false).removeFavorite(favorito);
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('No'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaDetallesProductos(
                    nombreProducto: favorito['name'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
