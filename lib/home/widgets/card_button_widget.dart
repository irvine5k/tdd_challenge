import 'package:flutter/material.dart';

class CardButtonWidget extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final IconData icon;

  const CardButtonWidget({
    Key key,
    @required this.text,
    @required this.colors,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
