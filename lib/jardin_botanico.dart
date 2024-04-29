import 'package:flutter/material.dart';
import 'checkout.dart'; 
import 'custom_button_bar.dart';
import 'floating_button.dart';

class JardinBotanicoPage extends StatelessWidget {
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
              'Jardín Botánico',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, fontFamily: 'Pacifico'), 
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/jardin.jpeg',
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
                    'El Jardín Botánico de Bogotá es un oasis verde en medio de la ciudad, hogar de una amplia variedad de especies vegetales nativas y exóticas. Sus jardines temáticos, invernaderos y programas educativos hacen de este lugar un refugio natural para la educación y la recreación de los visitantes.',
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
                        Text('Nacionales: \$5000'),
                        Text('Extranjeros: \$7000'),
                        SizedBox(height: 10),
                        Text(
                          'Horarios:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text('Martes a Viernes'),
                        Text('8:00-17:00'),
                        Text('Sábado y Domingo'),
                        Text('9:00-17:00'),
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
                backgroundColor:const  Color(0xFF59E0BD), 
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
      backgroundColor:const  Color(0xFFCCECE5), 
      bottomNavigationBar: CustomBottomBar(), 
      floatingActionButton: FloatingMapButton(), 
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, 
    );
  }
}

