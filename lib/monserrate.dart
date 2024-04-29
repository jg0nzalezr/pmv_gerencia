import 'package:flutter/material.dart';
import 'checkout.dart'; 
import 'custom_button_bar.dart';
import 'floating_button.dart';

class MonserratePage extends StatelessWidget {
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
              'Monserrate',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Pacifico'), 
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/monserrate.jpg',
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
                    'Monserrate, una montaña emblemática de Bogotá, ofrece un santuario religioso, senderos naturales y vistas panorámicas espectaculares de la ciudad. Es un destino cultural y espiritual imperdible para los visitantes que desean explorar la belleza de la capital colombiana desde las alturas.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
               const SizedBox(width: 20),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:const  Color(0xFFCBCBD1), 
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
                        Text('Funicular: \$17500'),
                        SizedBox(height: 10),
                        Text(
                          'Horarios:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text('Lunes a Domingo'),
                        Text('5:30-16:00'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega a la página checkout.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color(0xFF59E0BD), 
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20), 
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

