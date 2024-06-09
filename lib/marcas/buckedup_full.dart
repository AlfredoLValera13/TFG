import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'package:tfg_test/providers/favoritos_provider.dart';

class BuckedUpFull extends StatefulWidget {
  const BuckedUpFull({super.key});

  @override
  _BuckedUpFull createState() => _BuckedUpFull();
}

class _BuckedUpFull extends State<BuckedUpFull> {
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
      "id": 163,
      "name": "Bucked Up Blood Raz",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_blood_raz_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 164,
      "name": "Bucked Up Blue Raz",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_blue_raz_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 165,
      "name": "Bucked Up Grape Gainz",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_grape_grainz_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 166,
      "name": "Bucked Up Killa OJ",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_killa_oj_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 167,
      "name": "Bucked Up Mango Tongo",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_mango_tango_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 168,
      "name": "Bucked Up Miami",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_miami_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 169,
      "name": "Bucked Up Pump N´Grind",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_pumpngrind_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 170,
      "name": "Bucked Up Rocket Pop",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_rocket_pop_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 171,
      "name": "Bucked Up Sour Bucks",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_sour_bucks_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 172,
      "name": "Bucked Up Strawberry Kiwi",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_strawberry_kiwi_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
        }
      }
    },
    {
      "id": 173,
      "name": "Bucked Up Wild Orchard",
      "price": 1.55,
      "image": "lib/assets/images/buckedup/bucked_up_wild_orchard_600x600-Photoroom.png",
      "nutrition": {
         "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
        "Vitaminas": {
          "Vitamina B6": "1mg (50% VD)",
          "Vitamina B12": "3µg (50% VD)"
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
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.brown)),
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
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.brown)),
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
                              backgroundColor: Colors.green,
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
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaginaCarrito()),
                          );
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
        title: const Text('Bucked Up Energy'),
        backgroundColor: Colors.brown,
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
                image: AssetImage('lib/assets/images/buckedup/buckedup.gif'),
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
                        'lib/assets/images/buckedup/buckedup2-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Bucked Up Energy Drink fue lanzada en 2016 por la compañía de suplementos deportivos Bucked Up basada en Florida. Inicialmente se comercializó como un suplemento en polvo enfocado en mejorar el rendimiento en el gimnasio. En 2019, la marca lanzó su primera bebida energética líquida en lata como una extensión de su línea de productos. Las latas de Bucked Up tienen un diseño distintivo de camuflaje y venado, apuntando a un estilo de vida al aire libre. La bebida contiene ingredientes como citrulina, beta-alanina y cafeína de fuentes naturales como semillas de guaraná. Se promociona como una opción más saludable y sin azúcares artificiales en comparación con otras bebidas energéticas. Bucked Up ha ganado popularidad entre atletas, entusiastas del fitness y consumidores que buscan un producto de alta calidad. A pesar de ser una marca relativamente nueva, Bucked Up Energy ha logrado un crecimiento significativo en el mercado de bebidas energéticas deportivas.",
                          style: TextStyle(fontSize: 16, color: Colors.brown),
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
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
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
          '© Bucked Up Energy Company 2024 All Products are distributed by DAS Labs LLC • ALL RIGHTS RESERVED',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}