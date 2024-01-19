import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/pages/explanationpage/explanationpage.dart';
import 'package:projectedu/client/pages/subjects/subjects.dart';

class ChapterPage extends StatefulWidget {
  const ChapterPage({super.key});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: const Color.fromRGBO(250, 244, 225, 1),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 70,
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Center(
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const SubjectScreen()));
                                },
                                child: const Icon(FontAwesomeIcons.arrowLeft)),
                            const SizedBox(
                              width: 90,
                            ),
                            const Text(
                              'Chapters',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExplanationPage()));
                            },
                            child: const Card(
                              color: Colors.amber,
                              child: ListTile(
                                contentPadding: EdgeInsets.all(5),
                                leading: Icon(FontAwesomeIcons.addressBook),
                                title: Text('Physics'),
                                trailing: Icon(FontAwesomeIcons.arrowRight),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(width: 0);
                        },
                        itemCount: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
