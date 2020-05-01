import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({this.genderIcon, this.genderTitle});

  final IconData genderIcon;
  final String genderTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon, size: 80.0),
        SizedBox(height: 10),
        Text(
          genderTitle,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
