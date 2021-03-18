import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandButton extends StatelessWidget {
  final String c;
  final buttontap;
  LandButton({this.buttontap, required this.c});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontap,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            c,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
