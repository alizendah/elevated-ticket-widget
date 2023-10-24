import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  TicketPainter(
      {required this.paintColor, required this.shadowColor, this.elevation});
  final Color paintColor;
  final Color shadowColor;
  final double? elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = paintColor;
    double radius = 16;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..lineTo(size.width, size.height / 2 - radius)
      ..arcToPoint(Offset(size.width - radius, size.height / 2),
          radius: Radius.circular(radius), clockwise: false)
      ..arcToPoint(Offset(size.width, size.height / 2 + radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: true)
      ..lineTo(0, size.height / 2 + radius)
      ..arcToPoint(Offset(radius, size.height / 2),
          radius: Radius.circular(radius), clockwise: false)
      ..arcToPoint(Offset(0, size.height / 2 - radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawShadow(
      path,
      paintColor,
      elevation ?? 2.0,
      false,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
