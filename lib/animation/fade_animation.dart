import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double begin;
  final double end;
  final Duration duration;
  final Widget child;

  const FadeAnimation({
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
          opacity: (1 - (value.abs() / 100)).clamp(0.0, 1.0), // set opacity
          child: Transform.translate(
            offset: Offset(0, value), // Translate from top to bottom
            child: child,
          ),
        );
      },
    );
  }
}
