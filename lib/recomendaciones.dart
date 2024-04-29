import 'package:flutter/material.dart';
import 'custom_button_bar.dart';
import 'floating_button.dart';

class RecomendacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recomendaciones'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Te recomendamos estos eventos',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            _buildSiteCard('Festival Estero Picnic 2024', 'assets/fep.jpg',
                'El festival de música más importante de la ciudad. No te lo pierdas!'),
            _buildSiteCard('Burgerville 2024', 'assets/burgerville.jpeg',
                'Ven y prueba las mejores hamburguesas de la ciudad en el parque Museo del Chicó'),
            _buildSiteCard('Vino al Parque 2024', 'assets/vap.jpg',
                'Los mejores y más exclusivos vinos aquí mismo!'),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCCECE5), 
      bottomNavigationBar: CustomBottomBar(),
      floatingActionButton: FloatingMapButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, 
    );
  }

  Widget _buildSiteCard(String title, String imagePath, String description) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                description,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
