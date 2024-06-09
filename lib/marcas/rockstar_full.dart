import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class RockstarFull extends StatefulWidget {
  @override
  _RockstarFull createState() => _RockstarFull();
}

class _RockstarFull extends State<RockstarFull> {
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
      "id": 14,
      "name": "Rockstar Original",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarog.png",
      "nutrition": {
        "Calorías": "280",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "62g",
        "Azúcares": "62g",
        "Proteínas": "0g",
        "Cafeína": "240mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 15,
      "name": "Rockstar Sugar-Free",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarnosugarog.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "85 mg",
        "Carbohidratos Totales": "2g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 16,
      "name": "Rockstar Pure Zero",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarpurezerosilver.png",
      "nutrition": {
        "Calorías": "200",
        "Grasas Totales": "0g",
        "Sodio": "60mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "180mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 17,
      "name": "Rockstar Punched",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarpunched.png",
      "nutrition": {
        "Calorías": "260",
        "Grasas Totales": "0g",
        "Sodio": "60mg (5% VD)",
        "Carbohidratos Totales": "63g",
        "Azúcares": "61g",
        "Proteínas": "0g",
        "Cafeína": "240mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 18,
      "name": "Rockstar Recovery",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarhardcoreapple.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "60mg ",
        "Carbohidratos Totales": "2g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 19,
      "name": "Rockstar Juiced",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarguayaba.png",
      "nutrition": {
        "Calorías": "200",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "48g",
        "Azúcares": "45g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 20,
      "name": "Rockstar Zero Carb",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstartangerinemangoguavastrawberry.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "240mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 21,
      "name": "Rockstar Lemonade",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarlemonade.png",
      "nutrition": {
        "Calorías": "280",
        "Grasas Totales": "0g",
        "Sodio": "105mg ",
        "Carbohidratos Totales": "29g",
        "Azúcares": "27g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 22,
      "name": "Rockstar Strawberry Peach",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarstrawberrypeach.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "2g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 23,
      "name": "Rockstar Berry Sangria",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarberrysangria.png",
      "nutrition": {
        "Calorías": "240",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "63g",
        "Azúcares": "62g",
        "Proteínas": "0g",
        "Cafeína": "240mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 24,
      "name": "Rockstar Cañamo",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarCayamo_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "280",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "5g",
        "Azúcares": "3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 25,
      "name": "Rockstar Throwback Edition: O.G.",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarthrowbackog.png",
      "nutrition": {
        "Calorías": "160",
        "Grasas Totales": "0g",
        "Sodio": "360mg (15% VD)",
        "Carbohidratos Totales": "42g",
        "Azúcares": "38g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 26,
      "name": "Rockstar Killer Mandarin",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarkillermandarin-Photoroom.png",
      "nutrition": {
        "Calorías": "25",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 27,
      "name": "Rockstar Pure Zero Pineapple Mango",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarpurezerogrape.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "4g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "240mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 28,
      "name": "Rockstar Tropical Punch",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarTropicalPunch.png",
      "nutrition": {
        "Calorías": "230",
        "Grasas Totales": "0g",
        "Sodio": "50mg",
        "Carbohidratos Totales": "58g",
        "Azúcares": "57g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 29,
      "name": "Rockstar Horchata",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarhorchata-Photoroom.png",
      "nutrition": {
        "Calorías": "280",
        "Grasas Totales": "0g",
        "Sodio": "65mg",
        "Carbohidratos Totales": "39g",
        "Azúcares": "38g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 30,
      "name": "Rockstar Whipped Orange",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarwhippedorange.png",
      "nutrition": {
        "Calorías": "280",
        "Grasas Totales": "0g",
        "Sodio": "65mg",
        "Carbohidratos Totales": "39g",
        "Azúcares": "38g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
        }
      }
    },
    {
      "id": 31,
      "name": "Rockstar Vanilla",
      "price": 1.25,
      "image": "lib/assets/images/rockstar/rockstarVanilla-Photoroom.png",
      "nutrition": {
        "Calorías": "160",
        "Grasas Totales": "0g",
        "Sodio": "65mg",
        "Carbohidratos Totales": "39g",
        "Azúcares": "38g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "12µg (200% VD)",
          "Niacina": "20mg (100% VD)",
          "Ácido pantoténico": "10mg (100% VD)"
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
        title: const Text('Rockstar', style: TextStyle(color: Colors.yellow)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.yellow),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFavoritos()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.yellow),
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
                image: AssetImage('lib/assets/images/rockstar/rockstar.gif'),
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
                        'lib/assets/images/rockstar/rockstar-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Rockstar Energy Drink fue creada en 2001 por el fundador de la compañía de suplementos VPX Sports. Se comercializó inicialmente como una bebida energética premium con un alto contenido de cafeína y otros ingredientes como taurina y glucuronolactona. Su diseño de lata negra y dorada, junto con su logotipo de calavera, le dieron un aspecto distintivo y atractivo para los consumidores jóvenes y amantes de los deportes extremos. Rockstar se hizo popular rápidamente y se convirtió en una de las principales marcas de bebidas energéticas en el mercado estadounidense. En 2020, la compañía fue adquirida por PepsiCo, lo que le permitió una mayor distribución y presencia global.",
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
          '© ROCKSTAR y marcas relacionadas son propiedad de PepsiCo, Inc. © 2022 PEPSICO, INC.',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
