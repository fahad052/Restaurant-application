import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find a food or restauant',
            prefixIcon: Icon(
              Icons.category,
              color: Colors.indigo,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.indigo,
            ),
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
