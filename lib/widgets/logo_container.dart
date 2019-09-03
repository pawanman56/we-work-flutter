import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(left: 30, top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.amber
      ),
      child: Center(
        child: Text(
          'L',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}