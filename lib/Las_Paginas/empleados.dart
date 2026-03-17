import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class EmpleadosPage extends StatelessWidget {
  const EmpleadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 255, 225),
      appBar: AppBar(title: const Text("STAFF")),
      drawer: const BadDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/empleado.webp', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text("BAD CREW", 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 59, 153, 95))),
          ],
        ),
      ),
    );
  }
}