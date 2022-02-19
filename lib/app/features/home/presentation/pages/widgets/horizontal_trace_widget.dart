import 'package:flutter/material.dart';

class HorizontalTraceWidget extends StatelessWidget {
  final Color? color;
  final double? height;
  const HorizontalTraceWidget({Key? key, this.color, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.white,
      width: 10,
      height: height ?? 40,
    );
  }
}
