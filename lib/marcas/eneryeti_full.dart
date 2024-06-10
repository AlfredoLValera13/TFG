import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class EneryetiFull extends StatefulWidget {
  const EneryetiFull({super.key});

  @override
  _EneryetiFull createState() => _EneryetiFull();
}

class _EneryetiFull extends State<EneryetiFull> {
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
      "id": 120,
      "name": "Eneryeti Classic",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/original-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 121,
      "name": "Eneryeti Feroz",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/feroz-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "4.5g",
        "Azúcares": "4.5g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 122,
      "name": "Eneryeti Zyro Original",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/zyro-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 123,
      "name": "Eneryeti Zyro Zafiro",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/zafiro-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 124,
      "name": "Eneryeti Tryhard",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/tryhard-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "22",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 125,
      "name": "Eneryeti Tropyc",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/tropyc-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 126,
      "name": "Eneryeti Atomyc",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/atomyc-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 127,
      "name": "Eneryeti Dragon",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/dragon-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 128,
      "name": "Eneryeti Pinky",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/pinky-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 129,
      "name": "Eneryeti Splash",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/splash-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "22",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 130,
      "name": "Eneryeti Exotic",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/exotic-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 131,
      "name": "Eneryeti Wow",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/wow-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "69",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "6.9g",
        "Azúcares": "6.9g",
        "Proteínas": "0g",
        "Cafeína": "69mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 132,
      "name": "Eneryeti Bloom",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/bloom-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 133,
      "name": "Eneryeti Caribe",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/caribe-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 134,
      "name": "Eneryeti Zen",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/zen-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "22",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 135,
      "name": "Eneryeti Mango Go!",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/mangogo-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
        }
      }
    },
    {
      "id": 136,
      "name": "Eneryeti Cream Cheesecake",
      "price": 1.00,
      "image": "lib/assets/images/eneryeti/cream-cheesecake-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sal": "0,2 g",
        "Carbohidratos Totales": "5g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "32mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
          "Niacina": "8,0 mg 50% *",
          "Ácido pantoténico": "3,0 mg 50% *"
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
      title: const Text('Eneryeti'),
      backgroundColor: Colors.red,
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
              image: AssetImage('lib/assets/images/eneryeti/eneryeti.gif'),
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
                      'lib/assets/images/eneryeti/eneryeti2-Photoroom.png',
                      height: 200,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Eneryeti Energy Drink fue creada en 2015 por la empresa turca Yedi İklim. Su nombre y logotipo de un yeti o abominable hombre de las nieves la hicieron destacar en el mercado. Fue una de las primeras bebidas energéticas lanzadas en Turquía para competir con marcas establecidas como Red Bull.\n\nEneryeti se comercializó inicialmente con sabores frutales y un alto contenido de cafeína y taurina. La marca rápidamente ganó popularidad entre los consumidores turcos, especialmente los jóvenes y los deportistas. En 2018, Eneryeti fue adquirida por la compañía de bebidas Erbak Gıda. Bajo el nuevo propietario, Eneryeti amplió su línea de sabores y mejoró su fórmula para reducir el contenido de azúcar.\n\nActualmente, Eneryeti es una de las principales marcas de bebidas energéticas en Turquía y está explorando oportunidades de exportación a otros países.",
                          style: TextStyle(fontSize: 16, color: Colors.brown),
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
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellow),
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
        '© Eneryeti Company S.L 2024',
        style: TextStyle(color: Colors.white, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
}