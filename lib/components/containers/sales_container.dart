import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class SalesContainer extends StatelessWidget {
  final String title;
  final String value;
  final String unit;
  final String date;

  const SalesContainer({
    super.key,
    required this.title,
    required this.value,
    required this.unit,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.defaultGreyColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 2,
                    left: 18,
                    right: 0,
                    child: Text(
                      title,
                    ),
                  ),
                  Positioned(
                    top: -4,
                    right: -4,
                    child: Container(
                      width: constraints.maxWidth * 0.4,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: AppColors.salesGreyColor,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 3,
                    right: 18,
                    child: Text(
                      date,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.009,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: constraints.maxWidth,
                      height: 2,
                      decoration: const BoxDecoration(
                        color: AppColors.backgroundGreyColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: 20,
                    right: 0,
                    child: Row(
                      children: [
                        Text(
                          value,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.040,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          unit,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
