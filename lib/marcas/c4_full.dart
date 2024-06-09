import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'package:tfg_test/providers/favoritos_provider.dart';

class C4Full extends StatefulWidget {
  @override
  _C4Full createState() => _C4Full();
}

class _C4Full extends State<C4Full> {
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
      "id": 144,
      "name": "C4 Skittles",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Skittles_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 145,
      "name": "C4 Cherry Limeade",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Grape_Frost_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 146,
      "name": "C4 Frozen Bombsicle",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_FROZEN_BOMBSICLE_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 147,
      "name": "C4 Mango Foxtrot",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Mango_Foxtrot_564x564-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 148,
      "name": "C4 Orange Slice",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_ORANGE_SLICE_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 149,
      "name": "C4 Grape Frost",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Grape_Frost_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 150,
      "name": "C4 Cherry Starburst",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Cherry_Starburst_600x600.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 151,
      "name": "C4 Strawberry Starburst",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_Strawberry_Starburst_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 152,
      "name": "C4 Orange Starburst",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_ORANGE_STARDUST_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
        }
      }
    },
    {
      "id": 153,
      "name": "C4 Lemon Starburst",
      "price": 1.00,
      "image": "lib/assets/images/c4/C4_LEMON_STARDUST_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína Anhindra": "200mg",
        "Vitaminas": {
          "Vitamina B2": "3.4mg (200% VD)",
          "Vitamina B3 (Niacina)": "30mg (190% VD)",
          "Vitamina B6": "0.5mg",
          "Vitamina B12": "6µg",
          "Beta-Alanina": "3.2g",
          "Árginina Nitrato (N03-T®)": "1g"
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
        title: const Text('C4', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.orange,
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
                image: AssetImage('lib/assets/images/c4/c4.gif'),
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
                        'lib/assets/images/c4/c4-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "C4 Energy Drink fue lanzada en 2011 por la compañía de suplementos Cellucor con sede en Texas. Inicialmente se comercializó como un suplemento previo al entrenamiento enfocado en los deportistas y culturistas.\n\nEn 2013, Cellucor lanzó una versión líquida lista para tomar de C4 en latas de aluminio. La bebida se distinguió por contener ingredientes como cafeína anhidra, arginina y beta-alanina para mejorar el rendimiento.\n\nC4 se promocionó como una alternativa más saludable a las bebidas energéticas con menos azúcar y calorías. La marca ganó popularidad entre los entusiastas del fitness y los atletas de alto rendimiento.\n\nEn 2019, la empresa NutraBolt adquirió Cellucor y la marca C4 Energy.\n\nActualmente, C4 Energy Drink es una de las principales marcas de bebidas energéticas enfocadas en el mercado de fitness y deportes.",
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
          '© C4 CELLUCOR Woodbolt Distribution, LLC d/b/a Nutrabolt. 4407 Monterey Oaks Blvd., Suite 150. Austin, Texas 78749',
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
