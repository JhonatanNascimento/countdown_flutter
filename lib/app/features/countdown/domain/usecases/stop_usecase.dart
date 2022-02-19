import 'dart:async';

class StoptUsecase {
  final StreamController streamController;

  StoptUsecase({
    required this.streamController,
  });

  void stop() {
    streamController.close();
  }
}
