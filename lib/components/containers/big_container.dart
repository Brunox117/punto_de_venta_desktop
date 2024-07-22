import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class BigContainer extends StatelessWidget {
  final Widget child;

  const BigContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: AppColors.backgroundGreyColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: child,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 22,
            decoration: const BoxDecoration(
              color: AppColors.defaultBlueColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
