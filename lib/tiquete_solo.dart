import 'package:flutter/material.dart';

class TiqueteSoloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Tiquete'),
      ),
      body: Container(
        color: const Color(0xFFCCECE5), // Color de fondo de la pantalla
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Bordes curvos
            child: Image.asset(
              'assets/tiquete.jpg',
              width: 300, // Ancho de la imagen
              height: 500, // Alto de la imagen
              fit: BoxFit.cover, // Ajuste de la imagen
            ),
          ),
        ),
      ),
    );
  }
}
