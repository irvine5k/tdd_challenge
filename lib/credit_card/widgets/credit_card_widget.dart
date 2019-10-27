
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue[100],
              Colors.lightBlue[300],
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\$2.530,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'XXXX XXXX XXXX 4444',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'CARD HOLDER',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    'Flutteroncio Flutterando',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                    size: 30,
                  ),
                  Spacer(),
                  Text(
                    'EXPIRED DATE',
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '00/00',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
