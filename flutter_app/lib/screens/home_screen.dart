import 'package:flutter/material.dart';
import 'package:visitcontrol_app/widgets/visita_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Minha Agenda")),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return VisitaCard(
            medicoNome: index == 0 ? "Dr. Carlos" : "Dra. Ana Silva",
            clinica: index == 0 ? "NutriMed" : "Clínica Saúde Bem",
            horario: index == 0 ? "10:00" : "11:30",
          );
        },
      ),
    );
  }
}
