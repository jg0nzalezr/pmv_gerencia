import 'package:flutter/material.dart';
import 'custom_button_bar.dart';
import 'floating_button.dart';
import 'tiquete_solo.dart';
import 'menu.dart';

class TiquetesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Tickets Adquiridos!',
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
                physics: const NeverScrollableScrollPhysics(), 
                separatorBuilder: (BuildContext context, int index) => const Divider(height: 1, color: Colors.grey),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return _buildTicketItem(context, _events[index]['name']); 
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.black,
                backgroundColor: const Color(0xFF59E0BD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), 
                child: Text(
                  'Sigue conociendo tu destino turístico',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(), 
      backgroundColor: const Color(0xFFCCECE5),
      floatingActionButton: FloatingMapButton(), 
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop, 
    );
  }

  Widget _buildTicketItem(BuildContext context, String eventName) {
    return ListTile(
      title: Text(
        eventName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => TiqueteSoloPage()),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.white, 
        ),
        child: const Text('Ver Entradas'),
      ),
    );
  }
  
  //Elementos de la lista
  final List<Map<String, dynamic>> _events = [
    {'name': 'Museo Nacional'},
    {'name': 'Vino al Parque'},
    {'name': 'Jardín Botánico'},
    {'name': 'Bambulé Bar'},
  ];
}
