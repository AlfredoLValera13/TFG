import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'package:tfg_test/providers/favoritos_provider.dart';

class BangFull extends StatefulWidget {
  const BangFull({super.key});

  @override
  _BangFull createState() => _BangFull();
}

class _BangFull extends State<BangFull> {
  final List<Map<String, dynamic>> products = [
    {
      "id": 183,
      "name": "Bang Energy Black Cherry Vainilla",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Black_Cherry_Vanilla_600x600Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 184,
      "name": "Bang Energy Blue Razz",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Blue_Razz_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 185,
      "name": "Bang Energy Cherry Blade Lemonade",
      "price": 1.00,
      "image": "lib/assets/images/bang/bang_Cherry_Blade_Lemonade_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 186,
      "name": "Bang Energy Cotton Candy",
      "price": 1.00,
      "image": "lib/assets/images/bang/bang_Cottoncandy_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 187,
      "name": "Bang Energy Frose Rose",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Frose_rose_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 188,
      "name": "Bang Energy Lemon Drop",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Lemon_Drop_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 189,
      "name": "Bang Energy Peach Mango",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Peach_Mango_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 190,
      "name": "Bang Energy Purple Haze",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Purple_Haze_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 191,
      "name": "Bang Energy Radical Skadattle",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Radical_Skadattle_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 192,
      "name": "Bang Energy Champagne",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Champagne_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 193,
      "name": "Bang Energy Piña Colada",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Piña-Colada_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 194,
      "name": "Bang Energy Rainbow Unicorn",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Rainbow-Unicorn_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 195,
      "name": "Bang Energy Root Beer",
      "price": 1.00,
      "image": "lib/assets/images/bang/bang-Root-Beer-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 196,
      "name": "Bang Energy Star Blast",
      "price": 1.00,
      "image": "lib/assets/images/bang/bang-Star-Blast_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 197,
      "name": "Bang Energy Strawberry Blast",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Strawberry-Blast_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 198,
      "name": "Bang Energy Wyldin´ Watermelon",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Wyldin’-Watermelon_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 199,
      "name": "Bang Energy Power Punch",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang-Power-Punch_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
    {
      "id": 200,
      "name": "Bang Energy Key Lime Pie",
      "price": 1.00,
      "image": "lib/assets/images/bang/Bang_Key_Lime_Pie_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "40mg",
        "Carbohidratos Totales": "0g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "300mg",
          "Vitaminas": {
          "Vitamina C": "27mg (30% VD)",
          "Vitamina B6": "0.5mg (30% VD)",
          "Vitamina B12": "1.5µg (60% VD)",
          "Magnesio": "5mg (1% VD)",
          "Potasio": "85mg (2% VD)",
          "Calcio:": "5mg (0% VD)",
          "Niacina: (Vitamina B3)": "5mg (30% VD)",
        }
      }
    },
  
  ];

  
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
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
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
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                            ),
                            ...entry.value.entries.map((subEntry) {
                              return Text(
                                "${subEntry.key}: ${subEntry.value}",
                                style: const TextStyle(fontSize: 14, color: Colors.red),
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
        title: const Text('Bang Energy'),
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
                image: AssetImage('lib/assets/images/bang/bang.gif'),
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
                        'lib/assets/images/bang/bang-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Bang Energy Drink fue creada en 2012 por Jack Owoc, ex ejecutivo de bebidas. La bebida se comercializó inicialmente bajo la marca 'Redline' antes de cambiar a Bang en 2016. Bang se promocionó como una bebida energética súper potenciada con creatina y otros ingredientes. La marca se hizo popular entre los entusiastas del fitness y el culturismo por su alto contenido de cafeína. En 2015, la compañía fue adquirida por Vital Pharmaceuticals (VPX Sports), una empresa de suplementos deportivos. Bang se distinguió por su envase metálico negro distintivo y sus sabores únicos como 'Fresa Monstruo'. La marca generó controversia por algunas afirmaciones cuestionables en su etiquetado y publicidad. Actualmente, Bang es una de las principales marcas de bebidas energéticas en el mercado estadounidense.",
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
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "${products[index]["price"].toStringAsFixed(2)}€",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
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
          '© 2024 - BANG Beverage Company LLC. All Rights Reserved',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}