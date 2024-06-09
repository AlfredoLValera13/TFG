import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

import '../models/modelo_carrito.dart';

class ReignFull extends StatefulWidget {
  @override
  _ReignFull createState() => _ReignFull();
}

class _ReignFull extends State<ReignFull> {
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
      "id": 32,
      "name": "REIGN Reignbow Sherbet",
      "price": 1.50,
      "image": "lib/assets/images/reign/Reignbow_Sherbet_600x600.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 33,
      "name": "REIGN Peach Fizz",
      "price": 1.50,
      "image": "lib/assets/images/reign/Peach_Fizz_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 34,
      "name": "REIGN Razzle Berry",
      "price": 1.50,
      "image": "lib/assets/images/reign/Razzle_Berry-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 35,
      "name": "REIGN Lemon HDZ",
      "price": 1.50,
      "image": "lib/assets/images/reign/REIGN_LemonHDZ_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 36,
      "name": "REIGN Sour Apple",
      "price": 1.50,
      "image": "lib/assets/images/reign/Sour_Apple_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 37,
      "name": "REIGN Carnival Candy",
      "price": 1.50,
      "image": "lib/assets/images/reign/CarnivalCandy_600x600.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 38,
      "name": "REIGN Orange Dreamsicle",
      "price": 1.50,
      "image": "lib/assets/images/reign/OrangeDreamsicle_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 39,
      "name": "REIGN Red Dragon",
      "price": 1.50,
      "image": "lib/assets/images/reign/RedDragon_600x600.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 40,
      "name": "REIGN Jalapeño Strawberry",
      "price": 1.50,
      "image": "lib/assets/images/reign/JalapeñoStrawberry_564x564-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 41,
      "name": "REIGN True Blu",
      "price": 1.50,
      "image": "lib/assets/images/reign/True_Blu_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 42,
      "name": "REIGN Watermelon Warlord",
      "price": 1.50,
      "image": "lib/assets/images/reign/Watermelon_Warlord_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 43,
      "name": "REIGN White Gummy Bear",
      "price": 1.50,
      "image": "lib/assets/images/reign/White_Gummy_Bear_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
        }
      }
    },
    {
      "id": 44,
      "name": "REIGN Tropical Storm ",
      "price": 1.50,
      "image": "lib/assets/images/reign/Tropical_Storm_500x500-Photoroom.png",
      "nutrition": {
        "Calorías": "10 kcal",
        "Grasas Totales": "0g",
        "Sodio": "220 mg",
        "Potasio": "80 mg",
        "Carbohidratos Totales": "3g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
	          "Vitaminas": {
            "Vitamina B2": "1.7mg",
            "Vitamina B3": "100% del VD",
            "Vitamina B6": "100% del VD",
            "Vitamina B12": "100% del VD",
            "Vitamina C": "50%",
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
        title: const Text('REIGN', style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.blue),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaFavoritos()),
              );

            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.blue),
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
                image: AssetImage('lib/assets/images/reign/reign.gif'),
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
                        'lib/assets/images/reign/reign-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Reign Energy Drink fue creado en 2019. Estas latas  contiene 300 mg de cafeína por lata y está enriquecida con BCAAs, CoQ10 y electrolitos, diseñada para mejorar el rendimiento y la recuperación muscular.\n\nSus puntos clave son: \n\n-Cafeína: Cada lata contiene 300 mg de cafeína, equivalente a unas tres tazas de café. \n\n-Sin Azúcar: Las bebidas energéticas Reign no contienen azúcar. \n\n-Electrolitos y BCAAs: Incluyen electrolitos para ayudar con la hidratación y BCAAs para apoyar la recuperación muscular. \n\n-Vitaminas: Reign está fortificado con vitaminas del grupo B (B3, B6, B12), que ayudan en el metabolismo energético y los niveles de energía en general. ",
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
          '© 2024 Copyright: Reign Beverage Company LLC.',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatefulWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isFavorited = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['name']),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.product['image'] != null)
              Center(
                child: Image.asset(
                  widget.product['image'],
                  height: 200,
                  width: 200,
                ),
              ),
            const SizedBox(height: 16.0),
            Text(
              widget.product['name'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Precio: ${widget.product['price']}€',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Valores Nutricionales:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            for (var nutrient in widget.product['nutrition'].entries)
              if (nutrient.value is Map)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nutrient.key,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      for (var subNutrient in nutrient.value.entries)
                        Text(
                          '${subNutrient.key}: ${subNutrient.value}',
                          style: const TextStyle(fontSize: 16),
                        ),
                    ],
                  ),
                )
              else
                Text(
                  '${nutrient.key}: ${nutrient.value}',
                  style: const TextStyle(fontSize: 16),
                ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isFavorited = !isFavorited;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(isFavorited
                          ? 'Añadido a favoritos'
                          : 'Eliminado de favoritos'),
                    ),
                  );
                },
                icon: Icon(isFavorited ? Icons.favorite : Icons.favorite_border),
                label: Text(isFavorited ? 'Favorito' : 'Añadir a favoritos'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isInCart = !isInCart;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(isInCart
                          ? 'Añadido a la cesta'
                          : 'Eliminado de la cesta'),
                    ),
                  );
                },
                icon: Icon(isInCart
                    ? Icons.shopping_cart
                    : Icons.add_shopping_cart),
                label: Text(isInCart ? 'En la cesta' : 'Añadir a la cesta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
