import 'package:flutter/material.dart';

class DeliveryAppbar extends AppBar {
  DeliveryAppbar({
    super.key,
    double elevation = 0.5,
    // Color color = Colors.white,
  }) : super(
         elevation: elevation,
         //  backgroundColor: color,
         title: Image.asset(
           'assets/images/logo.png',
           width: 80,
         ),
       );
}
