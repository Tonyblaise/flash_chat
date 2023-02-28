import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPressed;

  RoundedButton(
      {required Color this.color,
      required String this.title,
      required VoidCallback this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        //color: Colors.lightBlueAccent,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          // onPressed:
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            //'Log In'
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
