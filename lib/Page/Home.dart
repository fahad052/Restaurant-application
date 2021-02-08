import 'package:flutter/material.dart';
import 'package:flutter_application_1231/utilites/apiData.dart';
import 'package:flutter_application_1231/widget/Mytitle.dart';
import 'package:flutter_application_1231/widget/populerFood.dart';
import 'package:flutter_application_1231/widget/searchBar.dart';
import 'package:flutter_application_1231/widget/sectionCard.dart';
import 'package:flutter_application_1231/widget/topOffersCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

List icons = [
  Icons.ac_unit,
  Icons.accessibility_new,
  Icons.edit_location,
  Icons.gavel,
  Icons.format_align_justify,
  Icons.school,
  Icons.equalizer,
  Icons.account_balance
];
List titlse = [
  'Asian',
  'American',
  'Egypton',
  'Pizza',
  'Fahad',
  'Mashary',
  'Feisal',
  'Home',
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff3f5f9),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: myTitle(title: 'Explore', fontSize: 30),
                ),
                searchBar(),
                Container(
                  height: 90,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: titlse.length,
                      itemBuilder: (context, index) {
                        return sectionCard(
                            icon: icons[index], title: titlse[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8),
                  child: myTitle(title: 'Popular Food', fontSize: 30),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        return populerFood(
                          food: foods[index],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: myTitle(title: "Top Offers Food", fontSize: 30),
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return topOffersCard();
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
