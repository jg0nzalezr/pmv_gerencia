import 'package:flutter/material.dart';
import 'checkout.dart'; 
import 'custom_button_bar.dart';
import 'floating_button.dart';

class PlazaBolivarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sitio de Interés'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Plaza de Bolívar',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Pacifico'),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/plaza.jpg',
              width: 400,
              height: 400,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 5,
                  child: Text(
                    'La Plaza de Bolívar, ubicada en el corazón de Bogotá, es el epicentro histórico y político de la ciudad, rodeada por importantes edificaciones como la Catedral Primada, el Capitolio Nacional y el Palacio de Justicia. Es un espacio emblemático donde convergen la historia, la cultura y la vida cotidiana de la capital colombiana.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFCBCBD1), 
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Precios:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text('Ingreso: Gratuito'),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF59E0BD), 
                padding:const EdgeInsets.symmetric(horizontal: 60, vertical: 20), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), 
                ),
              ),
              child: const Text(
                'Agregar al carrito',
                style: TextStyle(color: Colors.black, fontSize: 20), 
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCCECE5), 
      bottomNavigationBar: CustomBottomBar(), 
      floatingActionButton: FloatingMapButton(), 
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}

