import 'package:flutter/material.dart';
import 'package:projectedu/colors/colors.dart';

class BoardingOne extends StatefulWidget {
  const BoardingOne({super.key});

  @override
  State<BoardingOne> createState() => _BoardingOneState();
}

class _BoardingOneState extends State<BoardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
            width: 400,
            height: double.maxFinite,
            color: colorlight,
            child: Image.asset(
              'images/photo1.png',
              width: 200,
              cacheWidth: 300,
            )),
      ),
    );
  }
}
