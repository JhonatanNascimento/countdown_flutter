import 'package:flutter/material.dart';
import 'package:sciensa_countdown/app/features/countdown/domain/entities/return_animation.dart';
import 'package:sciensa_countdown/app/features/countdown/presentation/stories/countdown_store.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({Key? key}) : super(key: key);

  @override
  State<CountdownPage> createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  Size? size;
  CountdownStore? store;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    store!.countdown!.stop();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    store = CountdownStore(maxHeight: size!.height);

    store!.countdown!.start();

    return Scaffold(
      backgroundColor: const Color(0xff233F4D),
      body: StreamBuilder<ReturnAnimation>(
          initialData: ReturnAnimation(30, 0, 0),
          stream: store!.countdown!.streamController.stream,
          builder: (context, returnAnimation) {
            if (returnAnimation.data!.count == 0) Navigator.pop(context);
            return Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, returnAnimation.data!.yAxis),
                  child: Container(
                    color: Colors.red,
                    height: returnAnimation.data!.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      returnAnimation.data!.count.toString(),
                      key: const Key("count"),
                      style: const TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            );
          }),
    );
  }
}
