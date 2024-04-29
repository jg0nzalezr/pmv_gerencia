import 'package:flutter/material.dart';
import 'monserrate.dart';
import 'custom_button_bar.dart';
import 'museo_nacional.dart';
import 'jardin_botanico.dart';
import 'plaza_bolivar.dart';
import 'floating_button.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implementar la funcionalidad de búsqueda aquí
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Sitios más populares',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MonserratePage()),
                );
              },
              child: _buildSiteCard('assets/monserrate.jpg', 'Monserrate'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MuseoNacionalPage()),
                );
              },
              child: _buildSiteCard('assets/museo.jpg', 'Museo Nacional'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JardinBotanicoPage()),
                );
              },
              child: _buildSiteCard('assets/jardin.jpeg', 'Jardín Botánico'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlazaBolivarPage()),
                );
              },
              child: _buildSiteCard('assets/plaza.jpg', 'Plaza Bolívar'),
            ),
          ],
        ),
      ),
      backgroundColor:const  Color(0xFFCCECE5), 
      bottomNavigationBar: CustomBottomBar(), 
      floatingActionButton: FloatingMapButton(), 
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, 
    );
  }

  Widget _buildSiteCard(String imagePath, String title) {
    return Container(
      width: double.infinity, // Ancho completo
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 150, // Altura menor
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
