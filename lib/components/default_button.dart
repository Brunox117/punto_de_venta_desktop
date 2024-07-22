import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class DefaultButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onPressed;
  const DefaultButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.black,),
      label: Text(title, style: const TextStyle(color: Colors.black)),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        backgroundColor: AppColors.defaultBlueColor,
      ),
    );
  }
}
