import 'dart:async';

import 'package:flutter/material.dart';

import 'logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reflectly UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 300,
    ),
  );

  late final Animation<double> _blinkAnimation = TweenSequence([
    TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1.0, end: 0.0), weight: 10),
    TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.0, end: 1.0), weight: 90),
  ]).animate(_animationController);

  int animationCounter = 0;
  late Timer _timer;

  @override
  void initState() {
  // Run animation in init
    _regularAnimation();

    // Start the timer to call the animation function every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      _callAnimation();
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();

    super.dispose();
  }

  void _callAnimation() {
    setState(() {
      // Increment the counter
      animationCounter++;

      // Determine which animation to call based on the counter
      if (animationCounter % 3 == 0) {
        // Call the third animation
        _thirdAnimation();
      } else {
        // Call the regular animation
        _regularAnimation();
      }
    });
  }

  void _regularAnimation() {
    // Your regular animation logic goes here
    print('Regular Animation');
    _animationController.reset();
    _animationController.forward();
  }

  void _thirdAnimation() {
    // Your special third animation logic goes here
    print('Special Third Animation');
    _animationController.reset();
    _animationController.forward().then((value) {
      _animationController.reset();
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
            ),
          ),
        ),
        Logo(
          blinkAnimation: _blinkAnimation,
        ),
      ],
    );
  }
}
