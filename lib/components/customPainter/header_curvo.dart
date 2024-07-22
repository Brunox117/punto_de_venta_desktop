import 'package:flutter/material.dart';
import 'package:punto_de_venta_desktop/config/theme/app_theme.dart';

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      )
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.defaultBlueColor
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.5, size.height, size.width, size.height * 0.5)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}