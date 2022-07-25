import 'package:flutter/material.dart';

import 'package:music_player_ui/colors.dart';
import 'package:music_player_ui/player_controls.dart';

import 'album_art.dart';
import 'navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Navigation_Bar(),
          Container(
            margin: EdgeInsets.all(1),
            height: height / 2.19,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Album_Art();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Text(
            'Gidget',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: darkPrimaryColor),
          ),
          const Text(
            'The Free Nationals',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: darkPrimaryColor),
          ),
          SliderTheme(
            data: const SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
            ),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.6),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          const PlayerControls(),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
