import 'dart:async';
import 'package:sciensa_countdown/app/features/countdown/domain/usecases/get_height_animation.dart';

import '../entities/chronometer.dart';
import '../entities/return_animation.dart';

class StartUsecase {
  final StreamController<ReturnAnimation> streamController;
  final Chronometer chronometer;
  final bool down;
  final double maxHeight;

  StartUsecase({
    required this.maxHeight,
    required this.streamController,
    required this.chronometer,
    required this.down,
  });

  void start() {
    try {
      int count = 0;
      double height = 0;
      double yAxis = 0;
      count = (down ? chronometer.duration! : 0);
      var getHeightAnimation = GetHeightAnimation();

      Timer.periodic(const Duration(seconds: 1), (timer) {
        if (timer.tick == chronometer.duration!) {
          timer.cancel();
        }

        down ? count-- : count++;

        yAxis += getHeightAnimation.getYAxis(
          maxHeight: maxHeight,
          duration: chronometer.duration!,
        );

        height += getHeightAnimation.getHeight(
            maxHeight: maxHeight, count: count, yAxis: yAxis);

        streamController.sink.add(ReturnAnimation(count, height, yAxis));
      });
    } catch (error) {
      streamController.addError(error);
    }
  }
}
