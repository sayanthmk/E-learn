import 'package:flutter/material.dart';
import 'package:projectedu/colors/colors.dart';

class BoardingTwo extends StatefulWidget {
  const BoardingTwo({super.key});

  @override
  State<BoardingTwo> createState() => _BoardingTwoState();
}

class _BoardingTwoState extends State<BoardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
            width: 400,
            height: double.maxFinite,
            color: colorlight,
            child: Image.asset(
              'images/photo2.png',
              width: 200,
              cacheWidth: 300,
            )),
      ),
    );
  }
}
