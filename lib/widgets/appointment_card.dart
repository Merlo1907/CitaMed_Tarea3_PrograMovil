import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    //Se usa un Stack para poder superponer elementos
    // (como el icono de notificación) sobre el contenedor principal.
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Alergologo - Dr. Mayorga",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Layout: Row para alinear icono y texto de forma horizontal
              Row(
                children: const [
                  Icon(Icons.access_time, color: Colors.white70, size: 20),
                  SizedBox(width: 8),
                  Text("Mañana, 10:30 AM", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
        // Positioned: Ubica el icono en la esquina superior derecha del Stack
        const Positioned(
          top: 15,
          right: 15,
          child: Icon(Icons.notifications_active, color: Colors.white38),
        ),
      ],
    );
  }
}