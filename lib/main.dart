import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fuel_consumption_calculator/appScreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1300),
    );
    Timer(Duration(milliseconds: 200), () => _animationController.forward());
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/petrolbg.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.3),
          ])),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 25, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(0, -1),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: Text(
                      "Oblicz swoje zużycie paliwa.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          height: 1.1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset(0, -1.5), end: Offset.zero)
                          .animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: Text(
                      "Śledzenie kosztów staje się prostsze!",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 155.0,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  _getExpandedPage(context)));
                    },
                    child: Hero(
                      tag: 'first',
                      child: Material(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 60,
                          width: 310,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [
                                    Colors.orange[900],
                                    Colors.orange[800],
                                    Colors.orange[400],
                                  ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Rozpocznij obliczenia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              ScaleTransition(
                                scale: Tween(begin: 1.7, end: 1.0).animate(
                                    CurvedAnimation(
                                        parent: _animationController,
                                        curve: Curves.decelerate)),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_getExpandedPage(context) {
  return Scaffold(body: AppScreen());
}
