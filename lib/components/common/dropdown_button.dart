import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class DropDownCustomButton extends StatelessWidget {
  final List<DropdownMenuItem> options;
  final void Function() onChanged;
  final String hint;
  const DropDownCustomButton(
      {super.key, required this.options, required this.onChanged, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: DropdownButtonFormField(
          items: options, 
          onChanged: (dynamic value) => onChanged(),
          decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.defaultGreyColor, // Color de fondo
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
            borderSide: BorderSide.none, // Sin contornos
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
        ),
          hint: Text(hint),
          ),
    );
  }
}