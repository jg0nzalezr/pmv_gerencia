import 'package:flutter/material.dart';
import 'custom_button_bar.dart';

class GuiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guía del Turista', style: TextStyle(fontSize: 30)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const  SizedBox(height: 10), 
            const Text(
              'Qué necesitas? Encuéntralo Aquí',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, 
            ),
            const SizedBox(height: 10), 
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, 
                    width: 4, 
                  ),
                  borderRadius: BorderRadius.circular(20), 
                ),
                child: Image.asset(
                  'assets/mapa.jpg',
                  width: 350,
                  height: 600,
                  fit: BoxFit.cover, 
                ),
              ),
            ),
            const SizedBox(height: 10), 
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color:const  Color(0xFFCBCBD1), 
                border: Border.all(color: Colors.black), 
                borderRadius: BorderRadius.circular(10), 
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  _buildMenuItem('Baños Públicos'),
                  _buildMenuItem('Restaurantes / Cafeterías'),
                  _buildMenuItem('Hoteles'),
                  _buildMenuItem('Establecimientos'),
                  _buildMenuItem('CAIs'),
                  _buildMenuItem('Bancos'),
                  _buildMenuItem('Casas de cambio'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
      backgroundColor: const Color(0xFFCCECE5),
    );
  }

  Widget _buildMenuItem(String text) {
    return Container(
      width: 300,
      height: 40,
      alignment: Alignment.center, 
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
