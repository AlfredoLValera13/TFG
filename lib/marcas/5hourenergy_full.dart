import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:tfg_test/providers/favoritos_provider.dart';

class FiveHourFull extends StatefulWidget {
  const FiveHourFull({super.key});

  @override
  _FiveHourFull createState() => _FiveHourFull();
}

class _FiveHourFull extends State<FiveHourFull> {
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
      "id": 201,
      "name": "5 Hour Energy Regular Strength",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_GrapeNormal.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
  {
      "id": 202,
      "name": "5 Hour Energy Extra Strength",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_GrapeExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 203,
      "name": "5 Hour Energy Blue Raspberry",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_BlueRaspberryExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 204,
      "name": "5 Hour Energy Cherry",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_CherryExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 205,
      "name": "5 Hour Energy Pomegranate",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_PomegranteNormal.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 206,
      "name": "5 Hour Energy Watermelon",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_WatermelonNormal.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 207,
      "name": "5 Hour Energy Pink Lemonade",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_GrapeNormal.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "15mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 208,
      "name": "5 Hour Energy Hawaiian Breeze",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_HawaiinBreezeExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 209,
      "name": "5 Hour Energy Orange",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_OrangeExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 210,
      "name": "5 Hour Energy Peach Mango",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_PeachMangoExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 211,
      "name": "5 Hour Energy Strawberry Banana",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_StrawberryBananaExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 212,
      "name": "5 Hour Energy Strawberry Watermelon",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_StrawberryWatermelonExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "40mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 213,
      "name": "5 Hour Energy Tropical Burst",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_TropicalBurstExtraPhotoroom.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 214,
      "name": "5 Hour Energy Watermelon Extra",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_WatermelonExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 215,
      "name": "5 Hour Energy Apple Bash",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_AppleBash.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 216,
      "name": "5 Hour Energy Pineapple Charge",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_Pineapple.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "230mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "2000mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
        }
      }
    },
    {
      "id": 217,
      "name": "5 Hour Energy Sour Apple",
      "price": 1.55,
      "image": "lib/assets/images/5hour/5HE_SourAppleExtra.png",
      "nutrition": {
        "Tamaño": "1.93 fl oz (aproximadamente 57 ml)",
        "Calorías": "4",
        "Grasas Totales": "0g",
        "Sodio": "10mg",
        "Carbohidratos Totales": "1g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "200mg",
        "Vitaminas": {
          "Vitamina B6": "40mg (2000% VD)",
          "Vitamina B12": "500µg (8333% VD)",
          "Niacina (Vitamina B3)": "30mg (150% del valor diario recomendado)",
          "Mezcla de Energía": "1870mg (incluye Taurina, Glucuronolactona, Cafeína, N-Acetil L-Tirosina, L-Fenilalanina, Citicolina)",
          "Ácido Pantoténico (Vitamina B5)": "50mg (1000% del valor diario recomendado)"
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
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.orange)),
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
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.orange)),
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
        title: const Text('5-Hour Energy'),
        backgroundColor: Colors.orange,
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
                image: AssetImage('lib/assets/images/5hour/5hour.gif'),
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
                        'lib/assets/images/5hour/5hour2-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "5-Hour Energy Drink fue lanzada en 2004 por la compañía Living Essentials con sede en Farmington Hills, Michigan. Fue una de las primeras \"bebidas energéticas en envase\" que llegó al mercado. Su pequeño tamaño de 1.93 onzas (57 ml) y su fórmula a base de una mezcla de vitaminas y aminoácidos lo hicieron único. Su comercialización se enfocó en proporcionar un aumento de energía durante varias horas sin la típica \"sacudida\" de las bebidas energéticas regulares.\n\nEn 2007, 5-Hour Energy superó los \$1 mil millones en ventas anuales, convirtiéndose en un éxito comercial. La bebida es conocida por su envase distintivo de plástico rojo y su eslogan \"horas de energía ahora, sin acaloramiento después\". En 2012, Living Essentials enfrentó algunas demandas por supuestos efectos secundarios, pero la marca siguió creciendo. Actualmente, 5-Hour Energy es una de las principales marcas de \"bebidas energéticas en envase\" en el mercado estadounidense.",
                          style: TextStyle(fontSize: 16, color: Colors.orange),
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
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
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
          '©2024, 5-hour Energy. SI Online, LLC, is an independent, authorized retailer of and maintains this website on behalf of the makers of 5-hour ENERGY® products. Living Essentials 2024',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}