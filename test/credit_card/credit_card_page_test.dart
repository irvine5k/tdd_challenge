import 'package:challenge_tdd/credit_card/credit_cards_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('Should create app bar correctly', (WidgetTester tester) async {
    await _createWidget(tester);

    expect(find.text('Credit Cards'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets(
    'Should create credit card widget correctly',
    (WidgetTester tester) async {
      await _createWidget(tester);

      expect(find.byIcon(Icons.credit_card), findsOneWidget);
      expect(find.text('\$2.530,00'), findsOneWidget);
      expect(find.text('XXXX XXXX XXXX 4444'), findsOneWidget);
      expect(find.text('CARD HOLDER'), findsOneWidget);
      expect(find.text('Flutteroncio Flutterando'), findsOneWidget);
      expect(find.text('EXPIRED DATE'), findsOneWidget);
      expect(find.text('00/00'), findsOneWidget);
    },
  );
  testWidgets(
    'Should create actions widget correctly',
    (WidgetTester tester) async {
      await _createWidget(tester);

      expect(find.byIcon(Icons.power_settings_new), findsOneWidget);
      expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.byIcon(Icons.delete), findsOneWidget);
      expect(find.text('Actions'), findsOneWidget);
      expect(find.text('Transaction'), findsOneWidget);
      expect(find.text('Bank account number'), findsOneWidget);
      expect(find.text('Remove card'), findsOneWidget);
    },
  );
}

Future<void> _createWidget(WidgetTester tester) async {
  final widget = MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'TDD Challenge',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: CreditCardsPage(),
  );

  await tester.pumpWidget(widget);

  await tester.pump();
}
