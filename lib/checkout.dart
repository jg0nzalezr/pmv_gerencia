import 'package:flutter/material.dart';
import 'custom_button_bar.dart';
import 'floating_button.dart';
import 'tiquetes.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Checkout',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFCBCBD1), 
                borderRadius: BorderRadius.circular(10), 
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), //NO QUITAR, ASI FUNCIONA
                separatorBuilder: (BuildContext context, int index) => const Divider(height: 1, color: Colors.grey), 
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return _buildTicketItem(_events[index]['name'], _events[index]['quantity'], _events[index]['price']); // Eventos y precios
                },
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Total a Pagar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    'COP \$169000',
                    style: TextStyle(fontSize: 18),
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
                  MaterialPageRoute(builder: (context) => TiquetesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:const  Color(0xFF59E0BD), // Color del botón personalizado
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20), // Aumentar tamaño del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bordes curvos
                ),
              ),
              child: const Text(
                'Pagar',
                style: TextStyle(color: Colors.black, fontSize: 20), // Texto más grande y en negro
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(), // Agrega el botón personalizado aquí
      backgroundColor: const Color(0xFFCCECE5), // Color de fondo de la pantalla
      floatingActionButton: FloatingMapButton(), // Añade el botón flotante aquí
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, // Posición superior derecha
    );
  }

  Widget _buildTicketItem(String eventName, int quantity, int price) {
    return ListTile(
      title: Text(
        eventName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        'X$quantity',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('COP \$${quantity * price}'),
    );
  }
  
  // Lista de eventos y precios
  final List<Map<String, dynamic>> _events = [
    {'name': 'Museo Nacional', 'quantity': 4, 'price': 6000},
    {'name': 'Vino al Parque', 'quantity': 2, 'price': 35000},
    {'name': 'Jardín Botánico', 'quantity': 3, 'price': 5000},
    {'name': 'Bambulé Bar', 'quantity': 2, 'price': 30000},
  ];
}
