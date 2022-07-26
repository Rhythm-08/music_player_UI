import 'package:flutter/material.dart';

import 'colors.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Controls(
            icon: Icons.repeat,
          ),
          Controls(icon: Icons.skip_previous),
          PlayControl(),
          Controls(
            icon: Icons.skip_next,
          ),
          Controls(
            icon: Icons.shuffle,
          ),
        ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {
  const PlayControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: const Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: const Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: const Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20),
                ],
              ),
              child: const Center(
                  child: Icon(
                Icons.play_arrow,
                size: 50,
                color: darkPrimaryColor,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;
  const Controls({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: const Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -4),
              spreadRadius: -2,
              blurRadius: 20),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: const Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: const Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20),
                ],
              ),
              child: Center(
                  child: Icon(
                icon,
                size: 30,
                color: darkPrimaryColor,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
