import 'package:company_portal/src/ui/widgets/brutalist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BrutalistCard renders its child', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BrutalistCard(
            child: Text('conteúdo'),
          ),
        ),
      ),
    );

    expect(find.text('conteúdo'), findsOneWidget);
  });
}
