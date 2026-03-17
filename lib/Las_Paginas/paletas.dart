import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class PaletasPage extends StatelessWidget {
  const PaletasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 236, 195),
      appBar: AppBar(title: const Text("NUESTRAS PALETAS")),
      drawer: const BadDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/paleta%20limon.jpg', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text("PALETAS REBELDES", 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 161, 105, 0))),
          ],
        ),
      ),
    );
  }
}