import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomPaint(
        child: Container(
          color: Colors.white,
        ),
        foregroundPainter: WavePainter(0.5),
      );
    });
  }
}

class WavePainter extends CustomPainter {
  
  final double value;
  final bool isReverse;
  
  WavePainter(this.value, {this.isReverse = false});
  
  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.red.withOpacity(0.8);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);
    
    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);
    
    path.moveTo(size.width * 0, startPointY);
    if (!isReverse) {
      path.quadraticBezierTo(size.width * 0.5, controlPointY, size.width, endPointY);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    } else {
      path.quadraticBezierTo(size.width * 0.5, controlPointY, size.width, endPointY);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }

    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
