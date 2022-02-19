import 'package:flutter/material.dart';
import 'package:sciensa_countdown/app/features/home/presentation/pages/home_page.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
