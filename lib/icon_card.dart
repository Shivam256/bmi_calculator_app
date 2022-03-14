import 'package:flutter/material.dart';
import './constants.dart';

class IconCard extends StatelessWidget {
  final IconData iconName;
  final String cardTitle;

  IconCard({required this.cardTitle,required this.iconName});


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconName, size: 80),
          const SizedBox(
            height: 15,
          ),
          Text(
            cardTitle,
            style: klabelTextStyle
          )
        ]);
  }
}
