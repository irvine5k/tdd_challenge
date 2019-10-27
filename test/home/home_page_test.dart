import 'package:challenge_tdd/credit_card/credit_cards_page.dart';
import 'package:challenge_tdd/home/home_page.dart';
import 'package:challenge_tdd/home/widgets/card_buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should create app bar correctly', (WidgetTester tester) async {
    await _createWidget(tester);

    expect(find.text('DASHBOARD'), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
  });

  testWidgets('Should create money info correctly', (WidgetTester tester) async {
    await _createWidget(tester);

    expect(find.text('\$2.530,00'), findsOneWidget);
    expect(find.text('TOTAL BALANCE'), findsOneWidget);
  });

  testWidgets('Should create card buttons', (WidgetTester tester) async {
    await _createWidget(tester);

    expect(find.text('Credit Cards'), findsOneWidget);
    expect(find.text('Transaction'), findsOneWidget);
    expect(find.text('Deposit'), findsOneWidget);
    expect(find.text('Transfer'), findsOneWidget);
    expect(find.byIcon(Icons.credit_card), findsOneWidget);
    expect(find.byIcon(Icons.account_balance_wallet), findsOneWidget);
    expect(find.byIcon(Icons.local_atm), findsOneWidget);
    expect(find.byIcon(Icons.loop), findsOneWidget);
  });

  testWidgets('Should navigate to Credit Cards', (WidgetTester tester) async {
    await _createWidget(tester);


    await tester.tap(find.byKey(CardButtonsWIdget.creditCardsButtonKey));

    await tester.pump();
    await tester.pump();
    await tester.pump();
    await tester.pump();

    expect(find.byType(CreditCardsPage), findsOneWidget);
    
  });
}

Future<void> _createWidget(WidgetTester tester) async {
  final widget = MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'TDD Challenge',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  );

  await tester.pumpWidget(widget);

  await tester.pump();
}
