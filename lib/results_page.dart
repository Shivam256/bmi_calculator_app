import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import './constants.dart';
import './reusable_card.dart';

import './bottom_button.dart';

class ResultsPage extends StatelessWidget {


  final String bmiResults;
  final String resultText;
  final String interpretation;

  ResultsPage({required this.bmiResults,required this.interpretation,required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment:Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextTyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              btnText: 'RECALCLUTE',
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
