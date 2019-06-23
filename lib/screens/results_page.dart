import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';


class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String bmiText;
  final String interpretaion;


  ResultsPage({@required this.bmiResult,@required this.bmiText,@required this.interpretaion});



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
                  Text(bmiText ,style: kResultsTextStyle,),
                  Text(bmiResult,style: kResultsNumberStyle,),
                  Text(interpretaion, textAlign:TextAlign.center ,style: kbottomTextTextStyle,)
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
