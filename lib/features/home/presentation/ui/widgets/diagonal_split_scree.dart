import 'package:flutter/material.dart';
import 'package:portofolio/features/home/presentation/ui/widgets/home_screen_painter.dart';

class DiagonalSplitScreen extends StatelessWidget {
  final Widget child;
  const DiagonalSplitScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      painter: DiagonalPainter(),
      child: child,
    );
  }
}
