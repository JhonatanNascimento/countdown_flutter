abstract class Chronometer {
  int? duration;
  bool? _running;

  get running => _running;

  void start();
  void stop();
}
