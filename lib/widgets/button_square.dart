import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  final String title;
  final Function onTap;

  const ButtonSquare({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        child: Center(
          child: Text(title,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      onTap: onTap,
    );
  }
}
