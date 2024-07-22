import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  final List<Widget> widgets;
  final int crossAxisCount;
  final double spacing;
  final double aspectRatio;

  const GridWidget({
    super.key,
    required this.widgets,
    this.crossAxisCount = 2,
    this.spacing = 8.0,
    this.aspectRatio = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: aspectRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: spacing,
        mainAxisSpacing: 0,
      ),
      itemCount: widgets.length,
      itemBuilder: (context, index) {
        return widgets[index];
      },
    );
  }
}
