import 'package:flutter/material.dart';

class DeleteButton1 extends StatelessWidget {
  final void Function() onPressed;
  const DeleteButton1({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.delete_forever, color: Colors.black),
      label: const Text(
        'Limpiar',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor:
            Colors.red, // Color de fondo del botón Color del texto y del icono
      ),
    );
  }
}
