import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResults,
      @required this.resultsText,
      @required this.resultsInter});

  final String bmiResults;
  final String resultsText;
  final String resultsInter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Results',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colorSelect: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultsText, style: kResultsCategoryTextStyle),
                  Text(
                    bmiResults,
                    style: kNumberTextStyle,
                  ),
                  Text(resultsInter,
                      textAlign: TextAlign.center, style: kInfoTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE', onTap: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
