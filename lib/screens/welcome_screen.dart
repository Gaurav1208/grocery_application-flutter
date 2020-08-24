import 'package:flutter/material.dart';
import 'package:grocery_application/screens/otp_screen.dart';
import 'package:grocery_application/widgets/button_square.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 24.0),
          Text(
            'Welcome to',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          Text(
            'GROCERY',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(height: 48.0),
          Container(
            width: double.infinity,
            height: 60.0,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                borderRadius: BorderRadius.circular(14.0)),
            child: Row(
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          bottomLeft: Radius.circular(14.0))),
                  child: Center(
                    child: Text(
                      "+91",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Center(
                  child: Text(
                    "Enter Mobile Number",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black.withOpacity(0.55),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 73.0,
          ),
          ButtonSquare(
            title: "NEXT",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => OtpScreen()));
            },
          )
        ],
      ),
    );
  }
}
