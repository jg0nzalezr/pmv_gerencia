import 'package:flutter/material.dart';
import 'guia.dart'; 

class FloatingMapButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GuiaScreen()),
        );
      },
      child: const Icon(Icons.map),
    );
  }
}
