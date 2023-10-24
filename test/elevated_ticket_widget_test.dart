import 'package:elevated_ticket_widget/elevated_ticket_widget.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';

void main() {
  testWidgets('Run test', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: ElevatedTicketWidget(
          height: 100,
          width: 100,
          elevation: 2,
          child: Text(''),
        ),
      ),
    ));

    expect(find.byType(ElevatedTicketWidget), findsOneWidget);
  });
}
