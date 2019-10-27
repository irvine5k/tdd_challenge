import 'package:flutter/material.dart';

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              child: Text(
                'Actions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Transaction'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Bank account number'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.delete, color: Colors.red,),
                title: Text(
                  'Remove card',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
