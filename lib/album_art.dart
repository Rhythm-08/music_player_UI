import 'package:flutter/material.dart';
import 'package:music_player_ui/colors.dart';

class Album_Art extends StatelessWidget {
  const Album_Art({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'images/img.png',
          fit: BoxFit.fill,
        ),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor,
            offset: Offset(20, 8),
            spreadRadius: 3,
            blurRadius: 25,
          ),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
      ),
    );
  }
}
