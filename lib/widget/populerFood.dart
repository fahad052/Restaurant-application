import 'package:flutter/material.dart';
import 'package:flutter_application_1231/Page/FoodDeteils.dart';
import 'package:flutter_application_1231/utilites/apiData.dart';
import 'package:flutter_application_1231/utilites/recipeModel.dart';

class populerFood extends StatelessWidget {
  final RecipeModel food;
  const populerFood({
    Key key,
    this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodDeteils(
                      food: food,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 150,
          width: 180,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(food.imageUrl),
                              fit: BoxFit.cover))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(food.title),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('4.2'),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.indigo,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.indigo,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.indigo,
                          ),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Text('   (12+)')
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '\$' + food.prine,
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
