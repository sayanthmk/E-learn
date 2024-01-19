import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/chapters/chapter.dart';
import 'package:projectedu/colors/colors.dart';

class ExplanationPage extends StatefulWidget {
  const ExplanationPage({super.key});

  @override
  State<ExplanationPage> createState() => _ExplanationPageState();
}

class _ExplanationPageState extends State<ExplanationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            color: colorlight,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Card(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 350,
                      height: 70,
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChapterPage()));
                                  },
                                  child:
                                      const Icon(FontAwesomeIcons.arrowLeft)),
                            ),
                            const SizedBox(width: 50),
                            const Text(
                              'Reflection Of Light',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 200,
                  color: Colors.white,
                  child: const Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Reflection of Light',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'When a ray of light approaches a smooth polished surface and the light ray bounces back, it is called the reflection of light. The incident light ray that land on the surface is reflected off the surface. The ray that bounces back is called the reflected ray.The laws of reflection determine the reflection of incident light rays on reflecting surface.')
                  ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 200,
                  color: Colors.white,
                  child: const Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Types of Reflection of Light',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Specular Reflection refers to a clear and sharp reflection, like the ones you get in a mirror. A mirror is made of glass coated with a uniform layer of a highly reflective material such as powder. This reflective surface reflects almost all the light incident on it uniformly. There is not much variation in the angles of reflections between various points.'),
                  ]),
                )
              ],
            ),
          )),
        ],
      )),
    );
  }
}
