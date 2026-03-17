import 'package:flutter/material.dart';

class BadDrawer extends StatelessWidget {
  const BadDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.pinkAccent),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png'),
            ),
            accountName: const Text("Bad Ice Cream Co.", 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            accountEmail: const Text(
              "📍 Calle Ártica #666\n📞 555-BAD-ICE\n✉️ hello@badicecream.com",
              style: TextStyle(fontSize: 12),
            ),
          ),
          _buildItem(context, Icons.home, 'Inicio', '/'),
          _buildItem(context, Icons.icecream_outlined, 'Paletas', '/Paletas'),
          _buildItem(context, Icons. people_alt_outlined, 'Empleados', '/empleados'),
          _buildItem(context, Icons.icecream, 'Helados', '/Helados'),
        ],
      ),
    );
  }

  ListTile _buildItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: const Color.fromARGB(255, 255, 152, 186)),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Cierra el Drawer
        Navigator.pushNamed(context, route);
      },
    );
  }
}