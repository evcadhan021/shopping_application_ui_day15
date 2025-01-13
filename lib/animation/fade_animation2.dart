import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation2 extends StatelessWidget {
  final double begin;
  final double end;
  final Duration duration;
  final Widget child;

  const FadeAnimation2({
    Key? key,
    required this.begin,
    required this.end,
    required this.duration,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: begin, end: end), // set tween
      duration: duration, // set duration
      builder: (context, value, _) {
        return Opacity(
          opacity: value / end, // Animated opacity
          child: Transform.translate(
            offset: Offset(0, -value / 10), // Example translation animation
            child: child,
          ),
        );
      },
    );
  }
}