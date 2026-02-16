import 'package:flutter/material.dart';
import 'package:cita_medica_app/widgets/appointment_card.dart';
import 'package:cita_medica_app/widgets/menu_card.dart';
import 'package:cita_medica_app/widgets/notification_item.dart';
import 'profile_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Se utiliza un Scaffold para establecer la estructura básica (AppBar y Body).
    // El cuerpo usa un ListView para garantizar que el contenido sea desplazable
    // y evitar errores de "overflow" en pantallas pequeñas.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mi Clínica",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          // Icono de perfil con navegación a la pantalla de perfil
          IconButton(
            icon: const Icon(Icons.account_circle, size: 32),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        children: [
          //SECCIÓN: PRÓXIMA CITA
          const Text(
            "Tu próxima cita",
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const AppointmentCard(), // Widget para reutilizar la tarjeta de cita

          const SizedBox(height: 25),

          //SECCIÓN: ACCIONES RÁPIDAS
          const Text(
            "Acciones rápidas",
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          // Layout: GridView.count organiza los botones en 2 columnas fijas.
          // shrinkWrap: true permite que el Grid ocupe solo el espacio necesario dentro del ListView.
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // El scroll lo maneja el ListView padre
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.3,
            children: [
              MenuCard(
                icon: Icons.calendar_month,
                title: "Agendar Cita",
                color: Colors.green.shade50,
                onTap: () {
                  print("Navegar a agendar");
                },
              ),
              MenuCard(
                icon: Icons.history_rounded,
                title: "Historial",
                color: Colors.orange.shade50,
                onTap: () {
                  print("Navegar a historial");
                },
              ),
            ],
          ),

          const SizedBox(height: 25),

          //SECCIÓN: NOTIFICACIONES
          const Text(
            "Avisos importantes",
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          // Layout: Column para listar las notificaciones una debajo de otra.
          const NotificationItem(
            title: "Resultados listos",
            description: "Tus exámenes de laboratorio ya están en el sistema.",
          ),
          const NotificationItem(
            title: "Recordatorio",
            description: "No olvides tu cita de mañana con ayuno de 8 horas.",
          ),
        ],
      ),
    );
  }
}