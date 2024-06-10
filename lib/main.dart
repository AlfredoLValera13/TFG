import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:tfg_test/models/modelo_carrito.dart';
import 'package:tfg_test/pages/pagina_principal.dart';
import 'package:tfg_test/pages/pagina_marcas.dart';
import 'package:tfg_test/pages/detalles_marcas.dart';
import 'package:tfg_test/pages/pagina_detalles_productos.dart';
import 'package:tfg_test/pages/pagina_carrito.dart';
import 'package:tfg_test/pages/pagina_favoritos.dart';
import 'package:tfg_test/pages/pagina_login.dart';
import 'package:tfg_test/pages/pagina_registro.dart';
import 'package:tfg_test/utils/app_colors.dart';
import 'package:tfg_test/providers/favoritos_provider.dart';
import 'package:tfg_test/providers/carrito_provider.dart';
import 'package:tfg_test/pages/splash_screen.dart';
import 'package:tfg_test/pages/pagina_pago.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ModeloCarrito()),
        ChangeNotifierProvider(create: (_) => FavoritosProvider()),
        ChangeNotifierProvider(create: (_) => CarritoProvider()),
      ],
      child: MaterialApp(
        title: 'CHUTEINA',
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          hintColor: AppColors.accentColor,
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: AppColors.textColor),
            bodyMedium: TextStyle(color: AppColors.textColor),
          ),
        ),
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => const PaginaPrincipal(),
          '/marcas': (context) => PaginaMarcas(),
          '/detallesMarcas': (context) => DetallesMarcas(nombreMarca: ''),
          '/detallesProductos': (context) => const PaginaDetallesProductos(nombreProducto: ''),
          '/carritos': (context) => PaginaCarrito(),
          '/favoritos': (context) => PaginaFavoritos(),
          '/login': (context) => PaginaLogin(),
          '/registro': (context) => const PaginaRegistro(),
          '/pago': (context) => PaginaPago(),
        },
      ),
    );
  }
}
