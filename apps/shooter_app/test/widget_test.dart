import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shooter_app/src/ui/widgets/ds_text_field.dart';

void main() {
  testWidgets('DSTextField renders its label', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DSTextField(label: 'Nome'),
        ),
      ),
    );

    expect(find.text('NOME'), findsOneWidget);
  });
}
