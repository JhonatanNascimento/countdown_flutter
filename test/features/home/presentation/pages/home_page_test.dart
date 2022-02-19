import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sciensa_countdown/app/features/home/presentation/pages/home_page.dart';

void main() {
  Future<void> _createWidget(WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    await tester.pump();
  }

  group('Verifica se está tudo certo com o botão inkwell', () {
    testWidgets('Verifica se existe', (WidgetTester tester) async {
      await _createWidget(tester);

      expect(find.byType(InkWell), findsOneWidget);
    });
  });
}
