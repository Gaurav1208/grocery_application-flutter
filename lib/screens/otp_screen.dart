import 'package:flutter/material.dart';
import 'package:grocery_application/screens/main_screen.dart';
import 'package:grocery_application/widgets/button_square.dart';
import 'package:grocery_application/widgets/container_otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 35.0),
            Text(
              "Enter OTP",
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerOtp(),
                ContainerOtp(),
                ContainerOtp(),
                ContainerOtp(),
                ContainerOtp(),
                ContainerOtp(),
              ],
            ),
            SizedBox(height: 73.0),
            ButtonSquare(
              title: "LOGIN",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
