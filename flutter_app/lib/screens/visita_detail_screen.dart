import 'package:flutter/material.dart';

class VisitaDetailScreen extends StatelessWidget {
  const VisitaDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalhes da Visita")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Médico: Dr. Carlos", style: TextStyle(fontSize: 20)),
            const Text("Clínica: NutriMed"),
            const Text("Data: 10/05/2025 às 10:00"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckInScreen()),
                );
              },
              child: const Text("Check-in"),
            ),
          ],
        ),
      ),
    );
  }
}
