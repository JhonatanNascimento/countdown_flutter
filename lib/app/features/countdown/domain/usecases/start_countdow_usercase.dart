import 'dart:async';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/countdown.dart';
import '../entities/return_animation.dart';
import 'start_usecase.dart';

class StartCountdownUsecase extends StartUsecase {
  StartCountdownUsecase(
      {required StreamController<ReturnAnimation> streamController,
      required Countdown chronometer})
      : super(
            streamController: streamController,
            chronometer: chronometer,
            down: true,
            maxHeight: chronometer.animateMaxHeight);
}
