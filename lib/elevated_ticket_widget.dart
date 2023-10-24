library elevated_ticket_widget;

import 'package:elevated_ticket_widget/ticket_painter.dart';
import 'package:flutter/material.dart';

class ElevatedTicketWidget extends StatelessWidget {
  const ElevatedTicketWidget({
    super.key,
    required this.height,
    required this.width,
    this.elevation,
    this.backgroundColor,
    required this.child,
  });

  final double height;
  final double width;
  final double? elevation;
  final Color? backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: CustomPaint(
            painter: TicketPainter(
              paintColor: backgroundColor ?? Colors.white,
              shadowColor: Colors.black12,
              elevation: elevation ?? 2,
            ),
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: child,
        ),
      ],
    );
  }
}
