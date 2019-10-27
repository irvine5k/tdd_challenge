import 'package:challenge_tdd/credit_card/credit_cards_page.dart';
import 'package:challenge_tdd/home/widgets/card_button_widget.dart';
import 'package:flutter/material.dart';

class CardButtonsWIdget extends StatelessWidget {
  const CardButtonsWIdget({
    Key key,
  }) : super(key: key);

  static final Key creditCardsButtonKey = Key('creditCardsButton');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                key: creditCardsButtonKey,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreditCardsPage(),
                    ),
                  );
                },
                child: CardButtonWidget(
                  text: 'Credit Cards',
                  icon: Icons.credit_card,
                  colors: [Colors.lightBlue[100], Colors.lightBlue[300]],
                ),
              ),
              SizedBox(width: 20),
              CardButtonWidget(
                text: 'Transaction',
                icon: Icons.account_balance_wallet,
                colors: [Colors.pink[50], Colors.pink[100]],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CardButtonWidget(
                text: 'Deposit',
                icon: Icons.local_atm,
                colors: [Colors.cyan[100], Colors.cyan[300]],
              ),
              SizedBox(width: 20),
              CardButtonWidget(
                text: 'Transfer',
                icon: Icons.loop,
                colors: [Colors.purple[100], Colors.purple[200]],
              ),
            ],
          )
        ],
      ),
    );
  }
}
