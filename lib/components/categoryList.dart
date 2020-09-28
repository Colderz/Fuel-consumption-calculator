import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['Wszystkie', 'Twoje samochody', 'Twoje motocykle', 'Inne'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: 16, right: index == categories.length - 1 ? 16 : 0),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.black54.withOpacity(0.5)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: index == selectedIndex
                  ? TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                  : TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
