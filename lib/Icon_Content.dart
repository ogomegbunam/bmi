import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.Colour});

  final IconData icon;
  final String label;
  final Color Colour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colour,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
