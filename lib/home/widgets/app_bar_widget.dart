import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          Text(
            'DASHBOARD',
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
