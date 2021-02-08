import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1231/widget/Mytitle.dart';
import 'package:flutter_application_1231/widget/topOffersCard.dart';

class FoodByCategory extends StatefulWidget {
  final String title;

  const FoodByCategory({Key key, this.title}) : super(key: key);
  @override
  _FoodByCategoryState createState() => _FoodByCategoryState();
}

class _FoodByCategoryState extends State<FoodByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Categoty'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: myTitle(title: widget.title + ' New Food', fontSize: 30),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return topOffersCard();
              }),
        ),
      ]),
    );
  }
}
