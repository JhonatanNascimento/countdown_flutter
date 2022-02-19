import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/countdown.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/return_animation.dart';

void main() {
  Countdown? countdown;

  setUp(() {
    countdown = Countdown(
        duration: 30,
        streamController: StreamController<ReturnAnimation>(),
        animateMaxHeight: 400);
  });

  test('Verificar início de contagem', () {
    countdown!.start();
    expect(countdown!.running, equals(true));
  });

  tearDown(() => countdown!.stop());
}
