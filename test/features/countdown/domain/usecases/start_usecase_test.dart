import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/chronometer.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/countdown.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/return_animation.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/usecases/start_usecase.dart';

void main() {
  StartUsecase? startUsecase;
  Countdown? countdown;

  setUp(() {
    countdown = Countdown(
        duration: 30,
        streamController: StreamController<ReturnAnimation>(),
        animateMaxHeight: 400);

    startUsecase = StartUsecase(
        streamController: countdown!.streamController,
        chronometer: countdown!,
        down: true,
        maxHeight: 400);
  });

  group('Contagem regressiva', () {
    test('Verificar se o startUseCase não está nulo.', () {
      expect(startUsecase, isNotNull);
    });

    test('Verificar se está habilitado contagem regressiva', () {
      expect(startUsecase!.down, equals(true));
    });
  });

  tearDown(() => countdown!.stop());
}
