import 'package:challenge_tdd/credit_card/widgets/actions_widget.dart';
import 'package:challenge_tdd/credit_card/widgets/app_bar.dart';
import 'package:challenge_tdd/credit_card/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';

class CreditCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
           AppBarWidget(),
           CreditCardWidget(),
           ActionsWidget(),
        ],
      ),
    );
  }
}

