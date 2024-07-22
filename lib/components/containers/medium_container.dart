import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class MediumContainer extends StatelessWidget {
  final String subtitle;
  final String title;
  final Icon icon;
  final String value;
  final String unit;

  const MediumContainer(
      {Key? key,
      this.subtitle = '',
      this.unit = '',
      required this.title,
      required this.icon,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: AppColors.defaultGreyColor,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 22,
            decoration: const BoxDecoration(
              color: AppColors.defaultBlueColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 13,
          child: Text(subtitle),
        ),
      ],
    );
  }
}
