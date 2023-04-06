import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
       const colorizeColors = [
      Colors.yellow,
      Colors.green,
      Colors.red,
    ];
    return AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'TREMÔMETRO',
                    textStyle: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Merriweather',
                    ),
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              );
  }
}