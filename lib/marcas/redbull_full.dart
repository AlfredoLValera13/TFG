import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class RedbullFull extends StatefulWidget {
  const RedbullFull({super.key});

  @override
  _RedbullFull createState() => _RedbullFull();
}

class _RedbullFull extends State<RedbullFull> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isVisible = true;
      });
    });
  }
  final List<Map<String, dynamic>> products = [
    {
      "id": 45,
      "name": "Red Bull Energy Drink",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_og_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "200mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 46,
      "name": "Red Bull Zero Energy Drink",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_zero_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "200mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 47,
      "name": "Red Bull Energy Drink Zero Total",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_zero_total_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 48,
      "name": "Red Bull Energy Drink Blue Edition (Sabor Arándano)",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_BlueEdition-Photoroom.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 49,
      "name": "Red Bull Energy Drink Green Edition (Sabor Kiwi-Manzana)",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_green_edition_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 50,
      "name": "Red Bull Energy Drink Purple Edition (Sabor Açaí)",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_PurpleEdition_600x600.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 51,
      "name": "Red Bull Energy Drink Red Edition (Sabor Sandía)",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_Red_Edition-Photoroom.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
    {
      "id": 52,
      "name": "Red Bull Energy Drink Summer Edition (Sabor Fresa-Apricot)",
      "price": 1.20,
      "image": "lib/assets/images/redbull/rb_Summer_Edition_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "110",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "28g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
        "Vitaminas": {
          "Vitamina B2": "1.2mg (100% VD)",
          "Vitamina B3": "16mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "2.4µg (100% VD)"
        }
      }
    },
  ];

  void _showProductDetail(BuildContext context, Map<String, dynamic> product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  product["image"],
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  product["name"],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "Precio: ${product["price"].toStringAsFixed(2)}€",
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(height: 10),
                ExpansionTile(
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.blue)),
                  children: [
                    ...product["nutrition"].entries.map((entry) {
                      if (entry.value is Map) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.key,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            ...entry.value.entries.map((subEntry) {
                              return Text(
                                "${subEntry.key}: ${subEntry.value}",
                                style: const TextStyle(fontSize: 14),
                              );
                            }).toList(),
                          ],
                        );
                      } else {
                        return ListTile(
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.blue)),
                        );
                      }
                    }).toList(),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Provider.of<FavoritosProvider>(context, listen: false).addFavorite(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("${product["name"]} ha sido añadido a favoritos"),
                              backgroundColor: Colors.blue,
                            ),
                          );
                        },
                        icon: const Icon(Icons.favorite),
                        label: const Text("Añadir a favoritos"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Provider.of<ModeloCarrito>(context, listen: false).addItem(ObjetosCarritos(
                            id: product["id"].toString(),
                            nombre: product["name"],
                            precio: product["price"],
                            cantidad: 1,
                          ));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Producto añadido a la cesta"),
                              backgroundColor: Colors.blue,
                            ),
                          );
                        },
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text("Añadir a la cesta"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Red Bull'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFavoritos()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaCarrito()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/redbull/redbull.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                AnimatedOpacity(
                  opacity: _isVisible ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/images/redbull/redbull_logo-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Red Bull fue creada en 1987 por el empresario austríaco Dietrich Mateschitz.\n'
                          'La bebida está inspirada en las bebidas energéticas tailandesas que Mateschitz descubrió durante un viaje.\n'
                          'Red Bull fue lanzada por primera vez en Austria en 1987 y llegó a Estados Unidos en 1997.\n'
                          'La marca se hizo conocida por su inusual estrategia de mercadotecnia basada en el patrocinio de deportes extremos.\n'
                          'La lata plateada con el toro rojo se convirtió en un icono reconocible a nivel mundial.\n'
                          'En 2008, Red Bull superó las ventas de Pepsi y se convirtió en la bebida energética más vendida en Estados Unidos.\n'
                          'La compañía está muy involucrada en el deporte, patrocinando eventos y equipos de diferentes disciplinas.\n'
                          'Actualmente, Red Bull es la marca líder en el mercado global de bebidas energéticas.',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showProductDetail(context, products[index]);
                      },
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Card(
                            color: Colors.white.withOpacity(0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  products[index]["image"],
                                  width: 100,
                                  height: 100,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  products[index]["name"],
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "${products[index]["price"].toStringAsFixed(2)}€",
                                  style: const TextStyle(fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16),
        child: const Text(
          '© Red Bull GmbH Company 2024',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}