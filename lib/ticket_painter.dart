import 'dart:io';
import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  /// Constructor
  TicketPainter({
    required this.paintColor,
    required this.shadowColor,
    this.elevation,
  });

  /// This is the paint color for the shape widget - [Color]
  final Color paintColor;

  /// This is the shadow color for the shape widget - [Color]
  final Color shadowColor;

  /// This is the elevation for the shape widget - [double]
  final double? elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = paintColor;

    /// This is the corner radius for the ticket shape - [double]
    double radius = 16;

    /// This is the path for the ticket shape - [Path]
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

    final Paint paintInner = Paint()
      ..color = paintColor
      ..style = PaintingStyle.fill;
    double reduceValue = elevation ?? 4;

    Path pathInner = Path()
      ..moveTo(radius + reduceValue * 2.0, reduceValue * 2.0)
      ..lineTo(size.width - radius - reduceValue, reduceValue * 2.0)
      ..arcToPoint(
          Offset(size.width - reduceValue * 1.0, radius + reduceValue * 2.0),
          radius: Radius.circular(radius))
      ..lineTo(size.width - reduceValue, size.height / 2 - radius)
      ..arcToPoint(Offset(size.width - radius - reduceValue, size.height / 2),
          radius: Radius.circular(radius), clockwise: false)
      ..arcToPoint(Offset(size.width - reduceValue, size.height / 2 + radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(size.width - reduceValue, size.height - radius - reduceValue)
      ..arcToPoint(
          Offset(size.width - radius - reduceValue, size.height - reduceValue),
          radius: Radius.circular(radius))
      ..lineTo(radius + reduceValue * 2.0, size.height - reduceValue)
      ..arcToPoint(
          Offset(reduceValue * 1.5, size.height - radius - reduceValue * 1.5),
          radius: Radius.circular(radius),
          clockwise: true)
      ..lineTo(reduceValue * 1.5, size.height / 2 + radius)
      ..arcToPoint(Offset(radius + reduceValue * 1.5, size.height / 2 + 0),
          radius: Radius.circular(radius - 0), clockwise: false)
      ..arcToPoint(Offset(reduceValue * 1.5, size.height / 2 - radius),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(reduceValue * 1.5, radius + reduceValue * 1.5)
      ..arcToPoint(Offset(radius + reduceValue * 2.0, reduceValue * 2.0),
          radius: Radius.circular(radius))
      ..close();

    Path pathOuter = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..lineTo(size.width, size.height / 2 - radius)
      ..arcToPoint(Offset(size.width - radius, size.height / 2),
          radius: Radius.circular(radius), clockwise: false)
      ..arcToPoint(
          Offset(size.width, size.height / 2 + radius - reduceValue * 2.0),
          radius: Radius.circular(radius),
          clockwise: false)
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: true)
      ..lineTo(0, size.height / 2 + radius - reduceValue * 2.0)
      ..arcToPoint(Offset(radius, size.height / 2),
          radius: Radius.circular(radius), clockwise: false)
      ..arcToPoint(Offset(0, size.height / 2 - radius - reduceValue * 0.5),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    if (!Platform.isIOS) {
      canvas.drawShadow(
        pathOuter,
        Colors.black54,
        elevation ?? 2.0,
        false,
      );
      canvas.drawPath(pathInner, paintInner);
    } else {
      canvas.drawPath(path, paint);
      canvas.drawShadow(
        path,
        paintColor,
        elevation ?? 2.0,
        false,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
