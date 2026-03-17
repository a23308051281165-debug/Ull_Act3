import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color exacto para reutilizarlo
    const Color customPink = Color.fromARGB(255, 255, 176, 202);

    return Scaffold(
      // 1. Cambiamos el color de fondo del Scaffold
      backgroundColor: const Color.fromARGB(255, 255, 236, 195),
      
      appBar: AppBar(
        title: const Text("BAD ICE CREAM"),
        // 2. Hacemos que el AppBar también combine (opcional pero recomendado)
        backgroundColor: customPink, 
        elevation: 0,
      ),
      drawer: const BadDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tu imagen de logo de GitHub
            Image.network(
              'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/LOGOO.jpg', 
              width: 200, 
              height: 200
            ),
            const SizedBox(height: 20),
            const Text(
              "BIENVENIDO AL LADO FRÍO", 
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold, 
                // Cambiamos el color del texto a blanco o un rosa más oscuro para que resalte
                color: Colors.white, 
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Color.fromARGB(178, 255, 56, 132),
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}