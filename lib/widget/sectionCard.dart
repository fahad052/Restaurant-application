import 'package:flutter/material.dart';
import 'package:flutter_application_1231/Page/FoodByCategory.dart';

class sectionCard extends StatelessWidget {
  const sectionCard({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodByCategory(
                      title: title,
                    )));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Icon(
                icon,
                color: Colors.indigo,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 8.0, left: 8),
            child: Container(
              child: Text(title),
            ),
          )
        ],
      ),
    );
  }
}
