import 'package:flutter/material.dart';
import 'package:projectedu/client/boarding/boarding/boardingone.dart';
import 'package:projectedu/colors/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // _navigatetohome();
  }

  // ignore: unused_element
  void _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const BoardingOne()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 400,
            color: colorlight,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Educare',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 238, 184, 7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
