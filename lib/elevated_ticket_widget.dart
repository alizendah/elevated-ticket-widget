library elevated_ticket_widget;

import 'package:elevated_ticket_widget/ticket_painter.dart';
import 'package:flutter/material.dart';

class ElevatedTicketWidget extends StatelessWidget {
  /// Default Constructor
  const ElevatedTicketWidget({
    super.key,
    required this.height,
    required this.width,
    this.elevation,
    this.backgroundColor,
    required this.child,
  });

  /// This is the height for the shape widget - [double]
  final double height;

  /// This is the width for the shape widget - [double]
  final double width;

  /// This is the shadow for the shape widget - [double]
  final double? elevation;

  /// This is the color for the shape widget - [Color]
  final Color? backgroundColor;

  /// This is the content which need to be placed inside the shape widget - [Widget]
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
              /// If the color is not provided, default color is set to white
              paintColor: backgroundColor ?? Colors.white,
              shadowColor: Colors.black12,

              /// If the elevation is not provided, default value is set to 2
              elevation: elevation ?? 2,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
