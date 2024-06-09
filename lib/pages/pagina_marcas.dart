import 'package:flutter/material.dart';
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
import '../marcas/monster_full.dart';

class PaginaMarcas extends StatefulWidget {
  @override
  _PaginaMarcasState createState() => _PaginaMarcasState();
}

class _PaginaMarcasState extends State<PaginaMarcas> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationMarcas;
  late Animation<Offset> _animationTexto;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animationMarcas = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _animationTexto = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/fondo.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SlideTransition(
                position: _animationMarcas,
                child: Text(
                  'TODAS LAS MARCAS',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _animationTexto,
                child: Text(
                  '¡Disfruta de todas nuestras marcas disponibles!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: brands.length,
                itemBuilder: (context, index) {
                  final brand = brands[index];
                  final brandImage = brandImages[index];
                  return GestureDetector(
                    onTap: () {
                      if (brand == 'Monster') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MonsterFull()),
                        );
                      } else if (brand == 'Red Bull') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RedbullFull()), 
                        );
                      } else if (brand == 'Five Hour Energy') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FiveHourFull()),
                        );
                      } else if (brand == 'Bang') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BangFull()),
                        );
                      } else if (brand == 'Burn') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BurnFull()),
                        );
                      } else if (brand == 'Bucked Up') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BuckedUpFull()),
                        );
                      } else if (brand == 'Eneryeti') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EneryetiFull()),
                        );
                      } else if (brand == 'Rockstar') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RockstarFull()),
                        );
                      } else if (brand == 'C4') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => C4Full()),
                        );
                      } else if (brand == 'Contact') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContactFull()),
                        );
                      } else if (brand == 'Dia') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DiaFull()),
                        );
                      } else if (brand == 'Mercadona') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MercadonaFull()),
                        );
                      } else if (brand == 'Suaj Unlimited') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SuajFull()),
                        );
                      } else if (brand == 'Toro Loco') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ToroLocoFull()),
                        );
                      } else if (brand == 'ZOA') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ZoaFull()),
                        );
                      } else if (brand == 'Powerking') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PowerkingFull()),
                        );
                      } else if (brand == 'Que Te Calles') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const qtcFull()),
                        );
                      } else if (brand == 'PRIME') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PrimeFull()),
                        );
                      } else if (brand == 'Hell Energy') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HellEnergyFull()),
                        );
                      } else if (brand == 'Reign') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ReignFull()),
                        );
                      } else if (brand == 'Black Hat') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BlackHatFull()),
                        );
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          brandImage,
                          height: 80,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          brand,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
