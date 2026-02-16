import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;

  const NotificationItem({
    super.key, 
    required this.title, 
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    //Se usa Row para separar el icono del texto.
    // Se usa Expanded para el Column del texto para evitar errores de 
    // desbordamiento (overflow) si el texto es muy largo.
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: 
            Icon(Icons.info_outline, 
            color: Colors.white),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, 
                style: const TextStyle(
                fontWeight: FontWeight.bold)),
                Text(description, 
                style: const TextStyle(
                color: Colors.black54, 
                fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}