import 'package:flutter/material.dart';
import 'menu.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super();

  @override
  // ignore: library_private_types_in_public_api
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
        automaticallyImplyLeading: true, 
      ),
      backgroundColor: const Color(0xFFc3ded3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Registro',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1500), 
                    child: Image.asset(
                      'assets/logochiquito.jpg',
                      height: 150, 
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 20), 


            // Subtítulo "Nombres y Apellidos"
            const Text(
              'Nombres y Apellidos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Campo de texto para los nombres y apellidos
            const TextField(
              decoration: InputDecoration(hintText: 'Ingresa tus nombres y apellidos'),
            ),


            const SizedBox(height: 20), 


            // Subtítulo "Correo Electrónico"
            const Text(
              'Correo Electrónico',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Campo de texto para el correo electrónico
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Ingresa tu correo electrónico'),
            ),


            const SizedBox(height: 20), 


            // Subtítulo "Ingresa tu Contraseña"
            const Text(
              'Ingresa tu Contraseña',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Campo de texto para la contraseña
            const TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Ingresa tu contraseña'),
            ),


            const SizedBox(height: 20), 


            // Subtítulo "Confirma tu Contraseña"
            const Text(
              'Confirma tu Contraseña',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Campo de texto para confirmar la contraseña
            const TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'Confirma tu contraseña'),
            ),


            const SizedBox(height: 20),


            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: _acceptTerms,
                  onChanged: (bool? value) {
                    setState(() {
                      _acceptTerms = value ?? false;
                    });
                  },
                ),
                const Text(
                  'Acepto los términos y condiciones',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),


            const SizedBox(height: 20), 
            

            // Botón "Regístrate"
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFafd4c5),
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                ),
                child: const Text(
                  'Regístrate',
                  style: TextStyle(color: Color(0xFF37946E), fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
