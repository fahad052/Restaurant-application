import 'package:flutter/material.dart';

class topOffersCard extends StatelessWidget {
  const topOffersCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.everydayhealth.com/images/diet-nutrition/what-is-a-plant-based-diet-beginners-guide-food-list-benefits-722x406.jpg'),
                          fit: BoxFit.cover))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pesta With Home',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('the is Food is very Good'),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Column(
                      children: [
                        Text(
                          '\$25',
                          style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
