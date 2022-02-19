import 'package:flutter/material.dart';

import '../../../countdown/presentation/pages/countdown_page.dart';
import 'widgets/horizontal_trace_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff233F4D),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text(
                  "30",
                  key: Key("count"),
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
                const Text(
                  "Secounds",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    for (var indexContainer = 0;
                        indexContainer < 11;
                        indexContainer++)
                      indexContainer != 5
                          ? const HorizontalTraceWidget()
                          : const HorizontalTraceWidget(
                              height: 75,
                              color: Colors.redAccent,
                            )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CountdownPage(),
                          ));
                    },
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        "Start",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
