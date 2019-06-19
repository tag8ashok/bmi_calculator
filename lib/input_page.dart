import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './card_content.dart';
import './reusable_card.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColour = Colors.blueAccent;

enum genderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderType selectedGender;
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;

  //Gender 1 for Male 2 for Female
  // void updateColour(genderType gender) {
  //   if (gender == genderType.male) {
  //     if (maleCardColour == inactiveCardColour) {
  //       maleCardColour = cardColor;
  //       femaleCardColour = inactiveCardColour;
  //     } else {
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }

  //   if (gender == genderType.female) {
  //     if (femaleCardColour == inactiveCardColour) {

  //       femaleCardColour = cardColor;
  //       maleCardColour = inactiveCardColour;
  //     } else {
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            //For the first Row
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:
                        //GestureDetector(
                        // onTap: () {
                        //   setState(() {
                        //     selectedGender = genderType.male;
                        //   });
                        // },
                        ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = genderType.male;
                        });
                      },
                      colour: selectedGender == genderType.male
                          ? cardColor
                          : inactiveCardColour,
                      cardChild: new ReusableContainer(
                        iconText: 'MALE',
                        icontype: FontAwesomeIcons.mars,
                      ),
                    ),
                    //),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onpress: () {
                        setState(() {
                          selectedGender = genderType.female;
                        });
                      },
                      colour: selectedGender == genderType.female
                          ? cardColor
                          : inactiveCardColour,
                      cardChild: new ReusableContainer(
                          iconText: 'FEMALE',
                          icontype: FontAwesomeIcons.venus),
                    ),
                  )
                ],
              ),
            ),
            //Start of the Second Row
            Expanded(
              child: new ReusableCard(
                colour: cardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableCard(
                      colour: cardColor,
                    ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      colour: cardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: bottomContainerColor,
              //to Fit the Entire Bottom of the Screen
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
