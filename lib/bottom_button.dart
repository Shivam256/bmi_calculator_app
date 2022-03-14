import 'package:flutter/material.dart';
import './constants.dart';

class BottomButton extends StatelessWidget {
  final String btnText;
  final Function onPress;

  BottomButton({required this.btnText,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       onPress();
      },
      child: Container(
        child: Center(
          child: Text(
            btnText,
            style: kLargeBtnTextStyle
          ),
        ),
        padding:const EdgeInsets.only(bottom: 15),
        color: kbottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}