import 'package:flutter/foundation.dart';

class ObjetosCarritos with ChangeNotifier {
  final String id;
  final String nombre;
  final double precio;
  int cantidad;

  ObjetosCarritos({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.cantidad,
  });

  void incrementCantidad() {
    cantidad++;
    notifyListeners();
  }

  void decrementCantidad() {
    if (cantidad > 1) {
      cantidad--;
    }
    notifyListeners();
  }
}

class ModeloCarrito extends ChangeNotifier {
  final List<ObjetosCarritos> _items = [];

  List<ObjetosCarritos> get items => _items;

  double get totalPrice => _items.fold(0.0, (total, item) => total + item.precio * item.cantidad);

  void addItem(ObjetosCarritos item) {
    final index = _items.indexWhere((existingItem) => existingItem.id == item.id);
    if (index >= 0) {
      _items[index].cantidad += item.cantidad;
    } else {
      _items.add(item);
    }
    notifyListeners();
  }

  void updateItem(ObjetosCarritos item) {
    final index = _items.indexWhere((existingItem) => existingItem.id == item.id);
    if (index >= 0) {
      _items[index] = item;
      notifyListeners();
    }
  }

  void removeItem(String id) {
    _items.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}