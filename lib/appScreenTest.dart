import 'package:flutter/material.dart';

class AppScreenTest extends StatefulWidget {
  @override
  _AppScreenTestState createState() => _AppScreenTestState();
}

class _AppScreenTestState extends State<AppScreenTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepOrange[900],
          Colors.orange[800],
          Colors.orange[400],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Text(
                    'FuelNote',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Zbieraj informacje o spalaniu',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
