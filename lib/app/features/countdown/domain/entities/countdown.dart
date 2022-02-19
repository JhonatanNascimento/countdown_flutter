import 'dart:async';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/return_animation.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/usecases/start_countdow_usercase.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/usecases/stop_usecase.dart';
import 'chronometer.dart';

class Countdown implements Chronometer {
  @override
  int? duration;

  bool? _running;

  @override
  get running => _running;

  final double animateMaxHeight;

  final StreamController<ReturnAnimation> streamController;

  Countdown({
    required this.duration,
    required this.animateMaxHeight,
    required this.streamController,
  });

  @override
  void start() {
    _running = true;
    StartCountdownUsecase(streamController: streamController, chronometer: this)
        .start();
  }

  @override
  void stop() {
    StoptUsecase(
      streamController: streamController,
    ).stop();

    _running = false;
  }

  void dispose() {
    streamController.close();
  }
}
