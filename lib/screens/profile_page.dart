import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Se usa Column para organizar la foto de perfil arriba 
    // y la lista de opciones abajo, manteniendo una jerarquía clara.
    return Scaffold(
      appBar: AppBar(title: const Text("Mi Perfil")),
      body: Column(
        children: [
          const SizedBox(height: 30),
          // Layout: Center + Column para el encabezado del perfil
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(
                    Icons.person, 
                    size: 50, 
                    color: Colors.white),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Abby Merlo",
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold),
                ),
                const Text("abby.merlo@email.com", 
                style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Layout: Expanded con ListView para que la lista ocupe el resto del espacio
          Expanded(
            child: ListView(
              children: [
                _profileOption(Icons.badge, "Información Personal"),
                _profileOption(Icons.history, "Historial Médico"),
                _profileOption(Icons.settings, "Configuración"),
                _profileOption(Icons.logout, "Cerrar Sesión", color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget auxiliar para las filas de opciones
  Widget _profileOption(IconData icon, String title, {Color color = Colors.black87}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}