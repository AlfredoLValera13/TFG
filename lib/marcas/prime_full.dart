import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'package:tfg_test/providers/favoritos_provider.dart';

class PrimeFull extends StatefulWidget {
  const PrimeFull({super.key});

  @override
  _PrimeFull createState() => _PrimeFull();
}

class _PrimeFull extends State<PrimeFull> {
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
      "id": 58,
      "name": "PRIME Blue Raspberry",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMEBlueRaspberry.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 59,
      "name": "PRIME Strawberry Watermelon",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMESTRAWBERRYWATERMELON.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 60,
      "name": "PRIME Tropical Punch",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMETROPICALPUNCH.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 61,
      "name": "PRIME Grape",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMEGrape.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 62,
      "name": "PRIME Lemon-Lime",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMELemonLime.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 63,
      "name": "PRIME Ice Pop",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMEIcePop.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 64,
      "name": "PRIME Meta Moon",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMEMetaMoon.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
        }
      }
    },
    {
      "id": 65,
      "name": "PRIME Strawberry Banana",
      "price": 1.00,
      "image": "lib/assets/images/prime/PRIMEStrawberryBanana_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "2g",
        "Proteínas": "0g",
        "Cafeína": "80mg",
	          "Otros": {
            "Agua de Coco": "10%",
            "BCAAs": "Electrolitos",
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
        title: const Text('PRIME', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
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
                image: AssetImage('lib/assets/images/prime/prime.gif'),
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
                        'lib/assets/images/prime/prime-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "PRIME Energy Drink, lanzada en 2022 por las celebridades Logan Paul y KSI, ha rápidamente captado la atención mundial.\n\n Destacada por sus sabores únicos y enfoque en ingredientes de calidad, PRIME busca diferenciarse en el mercado de bebidas energéticas. \n\nLa marca promueve una opción de energía más saludable, evitando azúcares añadidos y utilizando electrolitos para la hidratación. Su éxito se refleja en la fuerte presencia en redes sociales y colaboraciones con eventos deportivos importantes.",
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
          '© PRIME Hydration, LLC (“PRIME,” “we”, “us” and “our” refer to PRIME)',
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
