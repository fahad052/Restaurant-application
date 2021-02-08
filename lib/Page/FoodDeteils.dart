import 'package:flutter/material.dart';
import 'package:flutter_application_1231/utilites/recipeModel.dart';
import 'package:flutter_application_1231/widget/Mytitle.dart';
import 'package:flutter_application_1231/widget/topOffersCard.dart';

class FoodDeteils extends StatefulWidget {
  final RecipeModel food;

  const FoodDeteils({Key key, this.food}) : super(key: key);

  @override
  _FoodDeteilsState createState() => _FoodDeteilsState();
}

class _FoodDeteilsState extends State<FoodDeteils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Detils'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 25),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(widget.food.imageUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.food.title),
                          Row(
                            children: [
                              Text(widget.food.comntion),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 115),
                            child: Text(
                              '\$' + widget.food.prine,
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
