import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/layout/basic_layout.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Punto de Venta Desktop',
      home: BasicLayout(),
    );
  }
}
