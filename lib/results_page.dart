import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import './input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
                      child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Results',style:kYourResultsTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center ,
                children: <Widget>[
                  Text('Normal' ,style: kResultsTextStyle,),
                  Text('63',style: kResultsNumberStyle,),
                  Text('Your are Below Average you need to excercise', textAlign:TextAlign.center ,style: kbottomTextTextStyle,)
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE BMI',onTap: () {
            Navigator.pop(context);
          },)
          

        ],
      )
    );
  }
}
