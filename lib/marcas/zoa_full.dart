import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class ZoaFull extends StatefulWidget {
  @override
  _ZoaFull createState() => _ZoaFull();
}

class _ZoaFull extends State<ZoaFull> {
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
      "id": 9,
      "name": "ZOA Super Berry",
      "price": 1.80,
      "image": "lib/assets/images/zoa/ZOA_Super_Berry_Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 10,
      "name": "ZOA Wild Orange",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Wild_OrangePhotoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 3,
      "name": "ZOA Lemon Lime",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Pineapple_Coconut_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 4,
      "name": "ZOA Tropical Punch",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Tropical_Punch_600x600Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 5,
      "name": "ZOA White Peach",
      "price": 1.80,
      "image": "lib/assets/images/zoa/White_Peach_500x500-Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 6,
      "name": "ZOA Cherry Limeade",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Cherry_Limeade_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 7,
      "name": "ZOA Frosted Grape",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Frosted_Grape_500x500Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
        }
      }
    },
    {
      "id": 8,
      "name": "ZOA Strawberry Watermelon",
      "price": 1.80,
      "image": "lib/assets/images/zoa/Strawberry_Watermelon_600x600Photoroom.png",
      "nutrition": {
        "Calorías": "15",
        "Grasas Totales": "0g",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B5": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "100% del VD",
            "Vitamina D": "25% del VD",
            "Folato": "100% del VD",
            "Magnesio": "2% del VD",
            "Potasio": "2% del VD",
            "Sodio": "2% del VD",
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
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.black)),
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
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.black)),
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
                              backgroundColor: Colors.orange,
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
                              backgroundColor: Colors.green,
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
        title: const Text('ZOA', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFavoritos()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
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
                image: AssetImage('lib/assets/images/zoa/zoa.gif'),
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
                        'lib/assets/images/zoa/zoa-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                         "ZOA Energy Drink, lanzada por Dwayne (The Rock) Johnson, es una bebida energética formulada con ingredientes naturales y vitaminas esenciales. Diseñada para proporcionar energía sostenible sin el choque, contiene cafeína de fuentes naturales como el té verde y el guaraná.\n\n Además, incluye electrolitos, aminoácidos y antioxidantes para apoyar el rendimiento físico y mental. Disponible en varios sabores, ZOA se enfoca en un estilo de vida saludable y activo.",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            textAlign: TextAlign.justify,
                        ),
                      )
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
          '© 2024, ZOA Energy.',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}