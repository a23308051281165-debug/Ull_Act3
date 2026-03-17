import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HeladosPage extends StatelessWidget {
  const HeladosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 218, 239),
      appBar: AppBar(title: const Text("HELADOS")),
      drawer: const BadDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/0d353844b3ab789345ba47fa2c74ff7a.png', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text("HELADOS PREMIUM", 
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 230, 92, 133))),
          ],
        ),
      ),
    );
  }
}