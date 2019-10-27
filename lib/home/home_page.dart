import 'package:challenge_tdd/home/widgets/app_bar_widget.dart';
import 'package:challenge_tdd/home/widgets/balance_widget.dart';
import 'package:challenge_tdd/home/widgets/card_buttons_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          AppBarWidget(),
          BalanceWidget(),
          CardButtonsWIdget(),
        ],
      ),
    );
  }
}



