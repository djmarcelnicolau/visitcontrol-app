import 'package:flutter/material.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Check-in")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            const Text("Chegada registrada!", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            const Text("Localização capturada com sucesso.", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckOutScreen()),
                );
              },
              child: const Text("Check-out"),
            ),
          ],
        ),
      ),
    );
  }
}
