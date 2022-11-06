import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color coulor;
  final Widget cardChild;
  final Function onPress;
  ResuableCard({required this.coulor, required this.cardChild, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: coulor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}