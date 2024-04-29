import 'package:flutter/material.dart';
import 'custom_button_bar.dart';
import 'floating_button.dart';

class AgendaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda Cultural'),
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
                'Se vienen cositas!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            _buildSiteCard('Degustación Criterion - 2 de Mayo', 'assets/criterion.jpg',
                'Degusta un menú del reconocido chef Jorge Rausch.'),
            _buildSiteCard('Clásico Capitalino - 30 de Abril', 'assets/campin.jpg',
                'Se testigo del duelo entre Santa Fe y Millonarios por el liderazgo de la liga.'),
            _buildSiteCard('Concierto Karol G - 4 de Junio', 'assets/karolg.jpg',
                'Pasa una noche inolvidable escuchando la música de la bichota en vivo!'),
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
              height: 150, // Altura menor
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
