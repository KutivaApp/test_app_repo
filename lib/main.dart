import 'package:flutter/material.dart';
import 'package:test_pp/ui/home.dart';

void main() => runApp(CarouselDemo());

final themeMode = ValueNotifier(2);

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePge(),
    );
  }
}
