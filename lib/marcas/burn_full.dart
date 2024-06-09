import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class BurnFull extends StatefulWidget {
  const BurnFull({super.key});

  @override
  _BurnFull createState() => _BurnFull();
}

class _BurnFull extends State<BurnFull> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  final List<Map<String, dynamic>> products = [
    {
      "id": 154,
      "name": "Burn Original",
      "price": 1.00,
      "image": "lib/assets/images/burn/Burn_og_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 155,
      "name": "Burn Apple Kiwi",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_apple_kiwi_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 156,
      "name": "Burn Passion Punch",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_raspberry_no_sugar_560x560-Photoroom.png",
      "nutrition": {
        "Calorías": "200",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "54g",
        "Azúcares": "54g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 157,
      "name": "Burn Lemon Ice",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_lemon_ice_599x1204-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 158,
      "name": "Burn Dark Energy",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_dark_energy_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 159,
      "name": "Burn Cherry",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_cherry_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 160,
      "name": "Burn Mango",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_mango_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 161,
      "name": "Burn Sour Twist",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_sour_twist-Photoroom.png",
      "nutrition": {
        "Calorías": "56",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "13.3g",
        "Azúcares": "13.3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 162,
      "name": "Burn Zero Sugar",
      "price": 1.00,
      "image": "lib/assets/images/burn/burn_peach_no_sugar_510x510-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "130mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
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
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.red)),
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
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.red)),
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
                              backgroundColor: Colors.red,
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
                              backgroundColor: Colors.red,
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
        title: const Text('Burn Energy'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFavoritos()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
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
                image: AssetImage('lib/assets/images/burn/burn.gif'),
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
                        'lib/assets/images/burn/burn.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Burn fue lanzada en 2002 por la compañía de bebidas Hardwood en Florida, Estados Unidos. Fue una de las primeras bebidas energéticas en el mercado después del éxito inicial de Red Bull. Su envase cilíndrico de aluminio azul y su logotipo de llamas la hicieron destacar en los estantes.\n\nBurn se comercializó con un sabor de frutas cítricas y una alta dosis de cafeína y taurina. En sus primeros años, la marca enfrentó algunas críticas por su alto contenido de cafeína y azúcar. En 2009, Coca-Cola adquirió la marca Burn como parte de su compra de Fuze Beverage. Bajo Coca-Cola, Burn experimentó una reformulación y un rediseño de envase en 2015. Aunque aún está disponible, Burn no ha logrado el mismo nivel de éxito que otras marcas principales de bebidas energéticas.",
                          style: TextStyle(fontSize: 16, color: Colors.red),
                          textAlign: TextAlign.justify,
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
                            color: Colors.white.withOpacity(0.3),
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
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
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
          '© BURN - ©2024 Energy Beverages LLC',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BurnFull(),
  ));
}