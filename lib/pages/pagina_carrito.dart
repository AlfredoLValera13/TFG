import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/utils/app_colors.dart';
import 'package:tfg_test/pages/pagina_pago.dart';

class PaginaCarrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<ModeloCarrito>(context);
    // Placeholder: Replace with actual user login status check
    bool isLoggedIn = false; // Suponiendo que tienes una manera de verificar si el usuario ha iniciado sesión

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          var item = cart.items[index];
          return ChangeNotifierProvider.value(
            value: item,
            child: Consumer<ObjetosCarritos>(
              builder: (context, item, child) {
                return ListTile(
                  title: Text(item.nombre),
                  subtitle: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          item.decrementCantidad();
                          cart.updateItem(item);
                        },
                      ),
                      Text('Cantidad: ${item.cantidad}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          item.incrementCantidad();
                          cart.updateItem(item);
                        },
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      cart.removeItem(item.id);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total: €${cart.totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
                      ElevatedButton(
                        onPressed: () {
                          if (isLoggedIn) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PaginaPago()),
                            );
                          } else {
                            Navigator.pushNamed(context, '/login');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.accentColor,
                        ),
                        child: const Text('Proceder al Pago'),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _confirmarCarritoLimpio(context, cart);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Eliminar Cesta Entera'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _confirmarCarritoLimpio(BuildContext context, ModeloCarrito cart) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmación'),
          content: Text('¿Deseas eliminar toda la cesta?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                cart.clearCart();
                Navigator.of(context).pop();
              },
              child: Text('Sí'),
            ),
          ],
        );
      },
    );
  }
}