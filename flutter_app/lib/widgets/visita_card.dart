import 'package:flutter/material.dart';

class VisitaCard extends StatelessWidget {
  final String medicoNome;
  final String clinica;
  final String horario;

  const VisitaCard({
    Key? key,
    required this.medicoNome,
    required this.clinica,
    required this.horario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          // Navegação para detalhes da visita
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VisitaDetailScreen(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(medicoNome, style: Theme.of(context).textTheme.titleMedium),
              Text("Clínica: $clinica"),
              Text("Horário: $horario"),
              const Text("Status: Agendada", style: TextStyle(color: Colors.green)),
            ],
          ),
        ),
      ),
    );
  }
}
