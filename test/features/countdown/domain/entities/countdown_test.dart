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

  group('Verificação de valores nulos.', () {
    test('Verifica se existe instância criada para a classe Countdown.', () {
      expect(countdown, isNotNull);
    });

    test('Verifica se a duração não é nula', () {
      expect(countdown!.duration, isNotNull);
    });
  });

  tearDown(() => countdown!.stop());
}
