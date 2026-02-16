# App de Reservas Médicas

Este es un proyecto desarrollado en Flutter para la clase de Programación Móvil. La aplicación simula una interfaz de gestión de citas médicas, enfocándose en la organización de layouts, modularización de componentes y navegación.

## Características
* **Vista de Próxima Cita:** Panel destacado con información relevante.
* **Acciones Rápidas:** Acceso directo para agendar nuevas citas o ver el historial.
* **Notificaciones:** Sección de avisos importantes para el usuario.
* **Perfil de Usuario:** Pantalla dedicada con la información del paciente.

## Estructura del Proyecto

El código se ha organizado de forma modular para facilitar su mantenimiento:

* `lib/main.dart`: Punto de entrada y configuración de temas.
* `lib/screens/`: Contiene las pantallas completas (`HomePage`, `ProfilePage`).
* `lib/widgets/`: Componentes reutilizables (`AppointmentCard`, `MenuCard`, `NotificationItem`).


## Justificación de Layouts (Requisito de Clase)

En el desarrollo se utilizaron los siguientes widgets de organización:

1.  **Column & Row:** Se utilizaron como base para la jerarquía vertical de la app y para alinear iconos con texto de forma horizontal.
2.  **Stack & Positioned:** Implementados en la tarjeta de citas para superponer iconos de notificación sobre el fondo, permitiendo un diseño más moderno.
3.  **ListView:** Utilizado en la pantalla principal y de perfil para asegurar que el contenido sea desplazable y evitar errores de desbordamiento (*overflow*).
4.  **GridView:** Empleado en la sección de "Acciones Rápidas" para organizar los botones en dos columnas simétricas de manera eficiente.
5.  **Expanded:** Utilizado en las notificaciones para que el texto ocupe el espacio disponible sin romper el diseño de la fila.


## Instalación y Ejecución

1.  Clonar el repositorio:
    ```bash
    git clone [https://github.com/TU_USUARIO/nombre-de-tu-repo.git](https://github.com/TU_USUARIO/nombre-de-tu-repo.git)
    ```
2.  Obtener las dependencias:
    ```bash
    flutter pub get
    ```
3.  Ejecutar la aplicación:
    ```bash
    flutter run
    ```

**Desarrollado por:** Abbi Merlo  
**Clase:** Programación Móvil  
**Año:** 2026