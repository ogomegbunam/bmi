import 'package:bmi/Reusable_Card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Resultpage extends StatelessWidget {
   Resultpage({ @required this.bmiResult,this.resultText,this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(

            child: Container(
              padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Result',style: kTitleTextStyle,)),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.center ,
                children: <Widget>[
                  Text(bmiResult,style: kResultTextStyle,),
                  Text( resultText,style: kBmiTextStyle,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Text('RECALCULATE'
                      ),
                      color: kBottomContainerColor,
                      margin: EdgeInsets.only(top: 10.0),
                      width: double.infinity,
                      height: kBottomContainerHeight,
                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
