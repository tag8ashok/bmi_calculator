import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './card_content.dart';
import './reusable_card.dart';
import './constant.dart';

enum genderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderType selectedGender;
  int height = 180;
  int weight = 80;
  int age = 20;
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kcardColor
                          : kinactiveCardColour,
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
                          ? kcardColor
                          : kinactiveCardColour,
                      cardChild: new ReusableContainer(
                          iconText: 'FEMALE', icontype: FontAwesomeIcons.venus),
                    ),
                  )
                ],
              ),
            ),
            //Start of the Second Row
            Expanded(
              child: new ReusableCard(
                colour: kcardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: knumberfontSize,
                        ),
                        Text(
                          'cm',
                          style: klabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableCard(
                      colour: kcardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT', style: klabelTextStyle),
                          Text(
                            weight.toString(),
                            style: knumberfontSize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      colour: kcardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: klabelTextStyle),
                          Text(
                            age.toString(),
                            style: knumberfontSize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: kbottomContainerColor,
              //to Fit the Entire Bottom of the Screen
              width: double.infinity,
              height: kbottomContainerHeight,
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
