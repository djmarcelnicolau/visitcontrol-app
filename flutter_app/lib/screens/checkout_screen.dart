import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Check-out")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text("Visita Finalizada!", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            const Text("Tempo total: 15 minutos", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: Navigator.of(context).pop,
              child: const Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
