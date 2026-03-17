import 'package:flutter/material.dart';
import 'Las_Paginas/home_page.dart';
import 'Las_Paginas/paletas.dart'; // Nombre ajustado a tu ruta
import 'Las_Paginas/empleados.dart';
import 'Las_Paginas/helados.dart';

void main() => runApp(const BadIceCreamApp());

class BadIceCreamApp extends StatelessWidget {
  const BadIceCreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bad Ice Cream',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.pinkAccent,
        brightness: Brightness.dark, // Modo oscuro para ese toque "rebelde"
      ),
      // Navegación Pro: Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/Paletas': (context) => const PaletasPage(),
        '/empleados': (context) => const EmpleadosPage(),
        '/Helados': (context) => const HeladosPage(),
      },
    );
  }
}