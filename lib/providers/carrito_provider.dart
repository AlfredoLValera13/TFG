import 'package:flutter/material.dart';

class CarritoProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _productos = [];

  List<Map<String, dynamic>> get productos => _productos;

  void agregarProducto(Map<String, dynamic> producto) {
    _productos.add(producto);
    notifyListeners();
  }

  void eliminarProducto(int index) {
    _productos.removeAt(index);
    notifyListeners();
  }

  double calcularTotal() {
    double total = 0.0;
    for (var producto in _productos) {
      total += producto["price"];
    }
    return total;
  }

  void limpiarCarrito() {
    _productos.clear();
    notifyListeners();
  }
}