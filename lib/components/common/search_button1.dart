import 'package:flutter/material.dart';

class SearchButton1 extends StatelessWidget {
  final void Function() onPressed;
  const SearchButton1({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.search, color: Colors.black),
      label: const Text(
        'Buscar',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors
            .green, // Color de fondo del botón Color del texto y del icono
      ),
    );
  }
}
