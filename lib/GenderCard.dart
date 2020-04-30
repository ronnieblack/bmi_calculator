import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}
