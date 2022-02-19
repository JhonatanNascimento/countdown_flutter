import 'dart:async';

import '../../domain/entities/countdown.dart';
import '../../domain/entities/return_animation.dart';

class CountdownStore {
  final double maxHeight;
  Countdown? countdown;

  CountdownStore({
    required this.maxHeight,
  }) : countdown = Countdown(
            duration: 30,
            animateMaxHeight: maxHeight,
            streamController: StreamController<ReturnAnimation>());

  double get getMaxHeight => maxHeight;
}
