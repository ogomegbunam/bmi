import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Card.dart';
import 'Icon_Content.dart';

const bottomContainerHeight = 80.0;
const inactiveContainerColor = Color(0xFF111328);
const activeContainerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedGender = Gender.male;
                        },
                      );
                    },
                    child: ReusableCard(
                        colour: selectedGender == Gender.male ? activeContainerColor: inactiveContainerColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender==Gender.female ? activeContainerColor:inactiveContainerColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
