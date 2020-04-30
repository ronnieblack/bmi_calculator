import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colorSelect, this.cardChild});

  final Color colorSelect;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colorSelect,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0));
  }
}
