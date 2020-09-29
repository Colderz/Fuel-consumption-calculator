import 'package:flutter/material.dart';
import 'package:fuel_consumption_calculator/components/costScreen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double sliderKm = 0;
  double sliderL = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.37 - 50,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: Colors.white),
              ),
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange[400], width: 2),
                ),
              )),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: size.width * 0.8,
                        height: size.height * 0.11,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 50,
                                  color: Color(0xFF12153D).withOpacity(0.3))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: size.height * 0.089,
                              width: size.width * 0.3 - 14,
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Text('Dystans'),
                                  SizedBox(
                                    height: size.height * 0.011,
                                  ),
                                  Text(
                                    '${sliderKm.toInt()} km',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.height * 0.039,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: size.width * 0.09),
                            Container(
                              height: size.height * 0.089,
                              width: size.width * 0.3 - 14,
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Text('Zużycie'),
                                  SizedBox(
                                    height: size.height * 0.011,
                                  ),
                                  Text(
                                    '${sliderL.toInt()} l',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.height * 0.039,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: Text(
                        '${((sliderL / sliderKm) * 100).toStringAsFixed(2)}l/100km',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: size.height * 0.053,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            'Dystans',
            style: TextStyle(
                color: Colors.black87,
                fontSize: size.height * 0.031,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 3, 20, 0),
          child: Text(
            'Kilometry',
            style:
                TextStyle(color: Colors.black54, fontSize: size.height * 0.016),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
          child: Slider(
            activeColor: Colors.orange[400],
            inactiveColor: Colors.grey,
            value: sliderKm,
            onChanged: (double newValue) {
              setState(() {
                sliderKm = newValue;
              });
            },
            min: 0,
            max: 990,
            divisions: 99,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 1, 20, 0),
          child: Text(
            'Zużycie',
            style: TextStyle(
                color: Colors.black87,
                fontSize: size.height * 0.031,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 3, 20, 0),
          child: Text(
            'Litry',
            style:
                TextStyle(color: Colors.black54, fontSize: size.height * 0.016),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
          child: Slider(
              activeColor: Colors.orange[400],
              inactiveColor: Colors.grey,
              value: sliderL,
              divisions: 1000,
              min: 0,
              max: 200,
              onChanged: (double val) {
                setState(() {
                  sliderL = val;
                });
              }),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        /*Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => _getCostPage(context)));
            },
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.56,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.orange[400], width: 2),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: size.height * 0.036,
                        color: Colors.orange[400].withOpacity(0.3))
                  ]),
              child: Center(
                child: Text(
                  'Policz koszt',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.height * 0.026,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),*/
        Center(
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.12,
              width: size.width * 0.88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Colors.orange[900],
                    Colors.orange[800],
                    Colors.orange[400],
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Koszt paliwa',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
        )
      ],
    );
  }
}

_getCostPage(context) {
  return Scaffold(body: CostScreen());
}
