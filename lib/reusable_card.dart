import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colorSelect, this.cardChild, this.onPress});

  final Color colorSelect;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            color: colorSelect,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(15.0)),
    );
  }
}
