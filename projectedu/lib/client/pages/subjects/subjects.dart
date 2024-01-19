import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/pages/chapters/chapter.dart';
import 'package:projectedu/client/pages/mainpage/main_page.dart';
import 'package:projectedu/colors/colors.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 900,
                color: colorlight,
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            height: 100,
                            width: 400,
                            color: Colors.amber,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MainHome()));
                                    },
                                    child:
                                        const Icon(FontAwesomeIcons.arrowLeft)),
                                const SizedBox(
                                  width: 80,
                                ),
                                const Text(
                                  'Subjects',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ],
                            )),
                        Positioned(
                          left: 30,
                          top: 80,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 300,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color.fromARGB(
                                                255, 245, 246, 245),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                hintText: 'search',
                                                suffixIcon: IconButton(
                                                    onPressed: () async {},
                                                    icon: const Icon(
                                                        Icons.search)),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 500,
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1.4,
                        ),
                        children: [
                          Card(
                            color: const Color.fromARGB(229, 236, 198, 9),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'images/chemistryproject.png',
                                            width: 80,
                                            height: 80,
                                            alignment: Alignment.topLeft,
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Text(
                                          'chemistry',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: const Color.fromARGB(229, 236, 198, 9),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ChapterPage()));
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'images/physicsproject.png',
                                              width: 80,
                                              height: 80,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ),
                                        ),
                                        const Center(
                                          child: Text(
                                            'physics',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
