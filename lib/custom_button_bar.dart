import 'package:flutter/material.dart';
import 'package:pmv_gerencia/checkout.dart';
import 'recomendaciones.dart'; 
import 'agenda.dart';
import 'menu.dart';
import 'main.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:const  Color(0xFF59E0BD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.star, color: Colors.black), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecomendacionesPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgendaPage()),
              );
            },
          ),
          IconButton(
            icon: const Text('K', style: TextStyle(fontSize: 24, color: Colors.black)), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.power_settings_new, color: Colors.black), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
