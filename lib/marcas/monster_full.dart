import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'dart:ui';
import 'dart:async';
import 'package:tfg_test/providers/favoritos_provider.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';


class MonsterFull extends StatefulWidget {
  const MonsterFull({super.key});

  @override
  _MonsterFull createState() => _MonsterFull();
}

class _MonsterFull extends State<MonsterFull> {
  final List<Map<String, dynamic>> products = [
    {
      "id": 70,
      "name": "Monster Energy",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_og_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "210",
        "Grasas Totales": "0g",
        "Sodio": "370mg",
        "Carbohidratos Totales": "54g",
        "Azúcares": "54g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 71,
      "name": "Monster Zero Ultra (16 oz)",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_blanco_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 72,
      "name": "Monster Juice (Mango Loco) (16 oz)",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_mango_no_sugar-Photoroom.png",
      "nutrition": {
        "Calorías": "230",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "55g",
        "Azúcares": "50g",
        "Proteínas": "0g",
        "Cafeína": "152mg",
        "Vitaminas": {
          "Vitamina C": "50%",
          "Vitamina B3": "250%",
          "Vitamina B6": "240%",
          "Vitamina B12": "200%"
        }
      }
    },
    {
      "id": 73,
      "name": "Monster Energy Assault (16 oz)",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_assault-Photoroom.png",
      "nutrition": {
        "Calorías": "200",
        "Grasas Totales": "0g",
        "Sodio": "170mg",
        "Carbohidratos Totales": "54g",
        "Azúcares": "54g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)"
        }
      }
    },
    {
      "id": 74,
      "name": "Monster Rehab (Tea + Lemonade) (15.5 oz)",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_rehab_tea_lemonade_600x600.png",
      "nutrition": {
        "Calorías": "25",
        "Grasas Totales": "0g",
        "Sodio": "170mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "3g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B3": "100%",
          "Vitamina B6": "100%",
          "Vitamina B12": "100%"
        }
      }
    },
    {
      "id": 75,
      "name": "Monster Energy Absolutely Zero",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_azul_no_azucar_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "0",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "4g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B3": "100%",
          "Vitamina B6": "100%",
          "Vitamina B12": "100%"
        }
      }
    },
    {
      "id": 76,
      "name": "Monster Energy Khaos",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_khaos_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "190",
        "Grasas Totales": "0g",
        "Sodio": "80mg",
        "Carbohidratos Totales": "45g",
        "Azúcares": "44g",
        "Proteínas": "2g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B3": "100%",
          "Vitamina B6": "100%",
          "Vitamina B12": "100%"
        }
      }
    },
    {
      "id": 77,
      "name": "Monster Energy Ripper",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ripper_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "185",
        "Grasas Totales": "0g",
        "Sodio": "80mg",
        "Carbohidratos Totales": "46.5g",
        "Azúcares": "42g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
          "Vitamina B3": "100%",
          "Vitamina B6": "100%",
          "Vitamina B12": "100%"
        }   
      }
    },
  
{
      "id": 78,
      "name": "Monster Energy Ultra Red",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultra_red_Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{     "id": 79,
      "name": "Monster Energy Ultra Blue",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultrablue_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 80,
      "name": "Monster Energy Ultra Citron",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster-ultra-citron-Photoroom.png-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 81,
      "name": "Monster Energy Ultra Sunrise",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultrasunrise_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 82,
      "name": "Monster Energy Ultra Black",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultra_black_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 83,
      "name": "Monster Energy Ultra Paradise",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultraparadise_600x600.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 84,
      "name": "Monster Energy Ultra Rosa",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ultra_rosa_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "10",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },



{
      "id": 85,
      "name": "Monster M-80",
      "price": 1.60,
      "image": "lib/assets/images/monster/MonsterM80_600x600-Photoroom.png-Photoroom.png",
      "nutrition": {
	      "Porcion": "240 ml",
        "Calorías": "100",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "27g",
        "Azúcares": "26g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 86,
      "name": "Monster MIXXD",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_mixxd_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "237",
        "Grasas Totales": "0g",
        "Sodio": "0.96 mg",
        "Carbohidratos Totales": "60g",
        "Azúcares": "55g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 87,
      "name": "Monster Energy Cuba-Lima",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_cubalima.png",
      "nutrition": {
        "Calorías": "50",
        "Grasas Totales": "0g",
        "Sodio": "0mg",
        "Carbohidratos Totales": "15g",
        "Azúcares": "14g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
        }
      }
    },

{
      "id": 88,
      "name": "Monster Energy Lewis Hamilton 44 No Sugar",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_lewis_hamilton_44_no_sugar_600x600-photoroom.png",
      "nutrition": {
        "Calorías": "100",
        "Grasas Totales": "0g",
        "Sodio": "35mg",
        "Carbohidratos Totales": "25g",
        "Azúcares": "0g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 89,
      "name": "Monster Juice Pacific Punch",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_pacific_punch-Photoroom.png",
      "nutrition": {
        "Calorías": "210",
        "Grasas Totales": "0g",
        "Sodio": "80mg",
        "Carbohidratos Totales": "52g",
        "Azúcares": "50g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 90,
      "name": "Monster Energy Lewis Hamilton 44",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_lewis_hamilton_600x613-photoroom.png",
      "nutrition": {
        "Calorías": "53",
        "Grasas Totales": "0g",
        "Sodio": "100mg",
        "Carbohidratos Totales": "11g",
        "Azúcares": "10g",
        "Proteínas": "0g",
        "Cafeína": "150mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 91,
      "name": "Monster Energy The Doctor",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_rossi_600x600.png",
      "nutrition": {
        "Calorías": "53",
        "Grasas Totales": "0g",
        "Sodio": "200mg",
        "Carbohidratos Totales": "13g",
        "Azúcares": "11g",
        "Proteínas": "0g",
        "Cafeína": "150mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 92,
      "name": "Monster Energy Gronk",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_gronk_600x600.png",
      "nutrition": {
        "Calorías": "100",
        "Grasas Totales": "0g",
        "Sodio": "180mg",
        "Carbohidratos Totales": "27g",
        "Azúcares": "26g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 93,
      "name": "Monster Nitrous Super Dry",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_super_dry-Photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 94,
      "name": "Monster Nitrous Killer B",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_killerb_photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 95,
      "name": "Monster Nitrous Anti-Gravity",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_anti-Gravity_600x600-Photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 96,
      "name": "Monster Nitrous Black Ice",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_blackice_photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 97,
      "name": "Monster Nitrous Baller's Blend",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_ballers_blend_600x600-Photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },
{
      "id": 98,
      "name": "Monster Nitrous Mad Dog",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_mad_dog_600x600-Photoroom.png",
      "nutrition": {
	      "Porción": "240 ml",
        "Calorías": "120",
        "Grasas Totales": "0g",
        "Sodio": "70mg",
        "Carbohidratos Totales": "30g",
        "Azúcares": "29g",
        "Proteínas": "0g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 99,
      "name": "Monster Pipeline Punch",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_pipeline_punch_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "210",
        "Grasas Totales": "0g",
        "Sodio": "95mg",
        "Carbohidratos Totales": "54g",
        "Azúcares": "49g",
        "Proteínas": "0g",
        "Cafeína": "160mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 100,
      "name": "Monster Rehab Orangeade",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_rehab_orangeade_564x564-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "3g",
        "Proteínas": "1g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 101,
      "name": "Monster Energy Rehab Peach",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_rehab_peach_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "4g",
        "Proteínas": "1g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },


{
      "id": 102,
      "name": "Monster Rehab Pink Lemonade",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_pink_lemonade_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "100mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "4g",
        "Proteínas": "1g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },


{
      "id": 103,
      "name": "Monster Rehab Rojo Tea",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_rojo_tea_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "5g",
        "Azúcares": "3g",
        "Proteínas": "1g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },


{
      "id": 104,
      "name": "Monster Rehab Green Tea",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_green_tea_600x600-photoroom.png",
      "nutrition": {
        "Calorías": "20",
        "Grasas Totales": "0g",
        "Sodio": "105mg",
        "Carbohidratos Totales": "6g",
        "Azúcares": "3g",
        "Proteínas": "1g",
        "Cafeína": "140mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },

{
      "id": 105,
      "name": "Monster Rehab Protean",
      "price": 1.60,
      "image": "lib/assets/images/monster/monster_protean_600x600-Photoroom.png",
      "nutrition": {
        "Calorías": "100",
        "Grasas Totales": "0g",
        "Sodio": "150mg",
        "Carbohidratos Totales": "27g",
        "Azúcares": "27g",
        "Proteínas": "1g",
        "Cafeína": "150mg",
        "Vitaminas": {
	        "Vitamina B2": "1.7mg (100% VD)",
          "Vitamina B3": "20mg (100% VD)",
          "Vitamina B6": "2mg (100% VD)",
          "Vitamina B12": "6µg (100% VD)",
	        "Vitamina C": "50%",
        }
      }
    },
  ];

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
                  title: const Text('Valores Nutricionales', style: TextStyle(color: Colors.green)),
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
                          title: Text("${entry.key}: ${entry.value}", style: const TextStyle(color: Colors.green)),
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
        title: const Text('Monster Energy'),
        backgroundColor: Colors.green,
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
                image: AssetImage('lib/assets/images/monster/monster.gif'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
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
                        'lib/assets/images/monster/monster-logo-Photoroom.png',
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Monster Energy Drink fue creada en 2002 por Hubert Hansen y sus socios. La empresa está basada en Corona, California, Estados Unidos. Monster fue una de las primeras bebidas energéticas en entrar al mercado después de Red Bull. Su embotellado distintivo de aluminio verde fue diseñado para resaltar en los estantes.\n\nLa marca patrocinó eventos deportivos extremos para posicionarse como una bebida energética alternativa. En 2008, Monster se convirtió en la tercera marca más vendida de bebidas energéticas en Estados Unidos. En 2012, Coca-Cola adquirió una participación del 16.7% en Monster Beverage Corporation.\n\nActualmente, Monster es una de las marcas líderes de bebidas energéticas a nivel mundial.",
                          style: TextStyle(fontSize: 16, color: Colors.green),
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
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
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
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
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
          '© Monster Energy Company American Beverage 2024',
          style: TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}