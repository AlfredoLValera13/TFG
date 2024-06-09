import 'package:flutter/material.dart';
import 'package:tfg_test/pages/pagina_marcas.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_login.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'package:tfg_test/marcas/5hourenergy_full.dart';
import 'package:tfg_test/marcas/bang_full.dart';
import 'package:tfg_test/marcas/blackhat_full.dart';
import 'package:tfg_test/marcas/buckedup_full.dart';
import 'package:tfg_test/marcas/burn_full.dart';
import 'package:tfg_test/marcas/c4_full.dart';
import 'package:tfg_test/marcas/contact_full.dart';
import 'package:tfg_test/marcas/dia_full.dart';
import 'package:tfg_test/marcas/eneryeti_full.dart';
import 'package:tfg_test/marcas/hellenergy_full.dart';
import 'package:tfg_test/marcas/mercadona_full.dart';
import 'package:tfg_test/marcas/powerking_full.dart';
import 'package:tfg_test/marcas/prime_full.dart';
import 'package:tfg_test/marcas/quetecalles_full.dart';
import 'package:tfg_test/marcas/redbull_full.dart';
import 'package:tfg_test/marcas/reign_full.dart';
import 'package:tfg_test/marcas/rockstar_full.dart';
import 'package:tfg_test/marcas/suaj_full.dart';
import 'package:tfg_test/marcas/toroloco_full.dart';
import 'package:tfg_test/marcas/zoa_full.dart';
import 'package:tfg_test/marcas/monster_full.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  final List<String> brands = [
    'Five Hour Energy', 'Bang', 'Black Hat', 'Bucked Up', 'Burn', 'C4', 'Contact', 'Dia', 'Eneryeti',
    'Hell Energy', 'Mercadona', 'Monster', 'Powerking', 'PRIME', 'Que Te Calles', 'Red Bull',
    'Reign', 'Rockstar', 'Suaj Unlimited', 'Toro Loco', 'ZOA',
  ];

  final List<String> brandImages = [
    'lib/assets/images/5hour/5hour.png', 'lib/assets/images/bang/bang.png', 'lib/assets/images/blackhat/blackhat.png',
    'lib/assets/images/buckedup/buckedup1.png', 'lib/assets/images/burn/burn.png', 'lib/assets/images/c4/c4.png',
    'lib/assets/images/contact/contact.png', 'lib/assets/images/dia/dia.png', 'lib/assets/images/eneryeti/eneryeti1.png',
    'lib/assets/images/hellenergy/hellenergy.png', 'lib/assets/images/mercadona/Mercadona.png', 'lib/assets/images/monster/monster-logo.png',
    'lib/assets/images/powerking/powerking.png', 'lib/assets/images/prime/prime.png', 'lib/assets/images/quetecalles/qtc.png',
    'lib/assets/images/redbull/redbull.png', 'lib/assets/images/reign/reign.png', 'lib/assets/images/rockstar/rockstar.png',
    'lib/assets/images/suaj/suaj.png', 'lib/assets/images/toroloco/toroloco.png', 'lib/assets/images/zoa/zoa.png',
  ];

  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Colors.yellow)),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Categorías',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
              leading: const Icon(Icons.store),
              title: const Text('Todas las marcas'),
              children: brands.asMap().entries.map((entry) {
                int index = entry.key;
                String brand = entry.value;
                String brandImage = brandImages[index];

                return ListTile(
                  leading: Image.asset(
                    brandImage,
                    width: 24,
                    height: 24,
                  ),
                  title: Text(brand),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => getBrandPage(brand),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.red),
              title: const Text('Favoritos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaFavoritos(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Iniciar Sesión'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaLogin()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('GitHub'),
              onTap: () async {
                const url = 'https://github.com/AlfredoLValera13/TFG';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('No se pudo abrir la URL de GitHub'),
                    ),
                  );
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Acerca De'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'CHUTEINA',
                  applicationIcon: Image.asset(
                    'lib/assets/images/ChuteinaLogo.png',
                    width: 50,
                    height: 50,
                  ),
                  children: [
                    const Text('MENSAJE WARNING:'),
                    const Text(
                      'Advertencias:\nNo se recomienda para mujeres embarazadas o lactantes, niños, o personas sensibles a la cafeína. Además, se aconseja no exceder de dos botellas al día, separadas por varias horas​.\n\nBeneficios:\nLas vitaminas B y los otros componentes en estas bebidas están diseñados para ayudar a convertir los alimentos en energía, mejorar la función cerebral y reducir la fatiga.',
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/fondomainscreen1.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'lib/assets/images/ChuteinaLogo.png',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '¡Bienvenido a CHUTEINA! ¡Es la primera tienda únicamente pensada para la compra de bebidas energéticas de todo el mundo!\n\n¡Sumergete en el mundo de la cafeína y compra todas las latas que desees!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaMarcas()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.yellow,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('MIRA TODAS NUESTRAS MARCAS'),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                      'Creado por Alfredo López Valera. IES Leonardo Da Vinci 2024.\n\nPara querer los derechos, contactar a: alfredolval22@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getBrandPage(String brand) {
    switch (brand) {
      case 'Five Hour Energy':
        return const FiveHourFull();
      case 'Bang':
        return const BangFull();
      case 'Black Hat':
        return const BlackHatFull();
      case 'Bucked Up':
        return const BuckedUpFull();
      case 'Burn':
        return const BurnFull();
      case 'C4':
        return const C4Full();
      case 'Contact':
        return const ContactFull();
      case 'Dia':
        return const DiaFull();
      case 'Eneryeti':
        return const EneryetiFull();
      case 'Hell Energy':
        return const HellEnergyFull();
      case 'Mercadona':
        return const MercadonaFull();
      case 'Monster':
        return const MonsterFull();
      case 'Powerking':
        return const PowerkingFull();
      case 'PRIME':
        return const PrimeFull();
      case 'Que Te Calles':
        return const qtcFull();
      case 'Red Bull':
        return const RedbullFull();
      case 'Reign':
        return ReignFull();
      case 'Rockstar':
        return RockstarFull();
      case 'Suaj Unlimited':
        return SuajFull();
      case 'Toro Loco':
        return ToroLocoFull();
      case 'ZOA':
        return ZoaFull();
      default:
        return Container();
    }
  }
}