import 'package:flutter/material.dart';

class ContainerOtp extends StatelessWidget {
  const ContainerOtp({
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(14.0)),
    );
  }
}
