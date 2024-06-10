import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'package:tfg_test/providers/favoritos_provider.dart';

class BlackHatFull extends StatefulWidget {
  const BlackHatFull({super.key});

  @override
  _BlackHatFull createState() => _BlackHatFull();
}

class _BlackHatFull extends State<BlackHatFull> {
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
      "id": 174,
      "name": "Blackhat Energy Classic",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_classic_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "46",
        "Grasas Totales": "0g",
        "Sal": "0,14 g",
        "Carbohidratos Totales": "10,8g",
        "Azúcares": "10,8g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 175,
      "name": "Blackhat Energy Topuria",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_topuria_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,21 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 176,
      "name": "Blackhat Energy Watermelon",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_watermelon_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "2",
        "Grasas Totales": "0g",
        "Sal": "0,13 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,22g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 177,
      "name": "Blackhat Energy Riverss (Fresa)",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_riverss_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "2",
        "Grasas Totales": "0g",
        "Sal": "0,13 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,22g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 178,
      "name": "Blackhat Energy Pineapple Coconut",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_pineapple_coconut_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,16 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 179,
      "name": "Blackhat Energy Maikel Delacalle (Banana)",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_maikel delacalle_600x600Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,16 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 180,
      "name": "Blackhat Energy L-Gante (Cannabis)",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_lgante_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,15 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 181,
      "name": "Blackhat Energy Kaydy Cain (Peach)",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_kaydy_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,16 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
        }
      }
    },
    {
      "id": 182,
      "name": "Blackhat Energy Wall Street Wolverine (Lightning Energy)",
      "price": 1.15,
      "image": "lib/assets/images/blackhat/black_hat_crypto_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "3",
        "Grasas Totales": "0g",
        "Sal": "0,07 g",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0,35g",
        "Cafeína": "180mg",
          "Vitaminas": {
            "Vitamina B2": "1.3mg (100% VD)",
            "Vitamina B3": "15mg (100% VD)",
            "Vitamina B6": "1.5mg (100% VD)",
            "Vitamina B12": "4µg (100% VD)",
            "Niacina": "7,0 mg 44% *",
            "Ácido pantoténico:": "2,0 mg 33% *"
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
        title: const Text('Black Hat Energy'),
        backgroundColor: Colors.black,
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
                image: AssetImage('lib/assets/images/blackhat/blackhat.gif'),
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
                        'lib/assets/images/blackhat/blackhat.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Black Hat Energy Drink fue lanzada en 2015 por la empresa de suplementos alemana AMSRUP. Se comercializó inicialmente como una bebida energética \"premium\" destinada a jugadores de deportes electrónicos (esports). Su nombre y diseño de lata negro hacían referencia a los \"sombreros negros\" de la comunidad de piratería informática. La bebida contenía ingredientes como taurina, L-carnitina y cafeína para proporcionar un impulso de energía enfocado.\n\nBlack Hat se promocionó como una alternativa saludable a las bebidas energéticas regulares con menos azúcar. En 2018, AMSRUP fue adquirida por la empresa de bebidas suiza Aroma Beverage Company. Bajo el nuevo propietario, Black Hat amplió su mercado más allá de los esports a los consumidores generales. Actualmente, Black Hat Energy se vende en varios países europeos y está tratando de ingresar al mercado estadounidense.",
                          style: TextStyle(fontSize: 16, color: Colors.white),
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
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
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
          '© BLACK HAT DRINKS S.L.U. 2024. Energy drinks by Ilia Topuria, Wall Street Wolverine, Maikel Delacalle, Kaydy Cain and L-Gante, Rivers',
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
            const SizedBox(height: 16.0),
            Text(
              "Precio: ${widget.product['price']}€",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16.0),
            ExpansionTile(
              title: const Text('Valores Nutricionales'),
              children: [
                ...widget.product['nutrition'].entries.map((entry) {
                  if (entry.value is Map) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.key,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ...entry.value.entries.map((subEntry) {
                            return Text("${subEntry.key}: ${subEntry.value}");
                          }).toList(),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      title: Text("${entry.key}: ${entry.value}"),
                    );
                  }
                }).toList(),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isFavorited = !isFavorited;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(isFavorited
                            ? '${widget.product['name']} ha sido añadido a favoritos'
                            : '${widget.product['name']} ha sido eliminado de favoritos'),
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
                            ? 'Producto añadido a la cesta'
                            : 'Producto eliminado de la cesta'),
                      ),
                    );
                  },
                  icon: Icon(isInCart ? Icons.shopping_cart : Icons.shopping_cart_outlined),
                  label: Text(isInCart ? 'En la cesta' : 'Añadir a la cesta'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BlackHatFull(),
  ));
}