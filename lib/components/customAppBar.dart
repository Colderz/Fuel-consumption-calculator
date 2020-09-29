import 'package:flutter/material.dart';

AppBar myAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(fontWeight: FontWeight.bold, fontSize: 23),
          children: [
            TextSpan(text: "Fuel", style: TextStyle(color: Colors.orange[400])),
            TextSpan(text: 'ator', style: TextStyle(color: Colors.black54)),
          ]),
    ),
  );
}
