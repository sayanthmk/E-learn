import 'package:flutter/material.dart';
import 'package:projectedu/client/boarding/boarding/boardingone.dart';
import 'package:projectedu/client/boarding/boarding/boardingtwo.dart';
import 'package:projectedu/client/otherpages/selectionscreen/select.dart';
import 'package:projectedu/client/otherpages/splashscreen/splash.dart';
import 'package:projectedu/colors/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            SplashScreen(),
            BoardingOne(),
            BoardingTwo(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip

              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text('SKIP')),

              //dot indicator

              SmoothPageIndicator(controller: _controller, count: 3),

              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const BoardingThree();
                          }),
                        );
                      },
                      child: const Text('DONE'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text(
                        'NEXT',
                        style: TextStyle(color: black),
                      ),
                    )
            ],
          ),
        ),
      ],
    ));
  }
}
