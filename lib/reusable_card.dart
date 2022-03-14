import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final Function? onTapCard;

  ReusableCard({required this.colour, this.cardChild, this.onTapCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        onTapCard!();
      }),
      child: Container(
          child: cardChild,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
          )),
    );
  }
}
