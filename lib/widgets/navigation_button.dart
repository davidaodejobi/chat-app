import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback whilePressed;

  NavigationButton({
    required this.color,
    required this.text,
    required this.whilePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: whilePressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
