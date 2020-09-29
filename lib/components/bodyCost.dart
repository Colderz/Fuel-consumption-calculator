import 'package:flutter/material.dart';

class BodyCost extends StatefulWidget {
  @override
  _BodyCostState createState() => _BodyCostState();
}

class _BodyCostState extends State<BodyCost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Koszt',
            style: TextStyle(
                fontFamily: 'VarelaRound',
                fontSize: size.height * 0.052,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('Oblicz koszt podróży',
              style: TextStyle(
                  fontFamily: 'VarelaRound',
                  fontSize: size.height * 0.022,
                  color: Colors.black54)),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Divider(
          indent: size.width * 0.04,
          endIndent: size.width * 0.4,
          thickness: 1,
          color: Colors.black54,
        )
      ],
    );
  }
}
