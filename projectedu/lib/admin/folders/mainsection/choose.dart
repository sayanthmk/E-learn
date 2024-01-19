import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/admin/folders/subjectadd/addsubject.dart';
import 'package:projectedu/client/otherpages/selectionscreen/select.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseSection extends StatefulWidget {
  const ChooseSection({super.key});

  @override
  State<ChooseSection> createState() => _ChooseSectionState();
}

class _ChooseSectionState extends State<ChooseSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(250, 244, 225, 1),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (ctx) {
                                  return AlertDialog(
                                    title: const Text('Log out'),
                                    content: const Text(
                                        'Are you sure wanted to Logout'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          return signout(ctx);
                                        },
                                        child: const Text('Yes'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(ctx).pop();
                                        },
                                        child: const Text('NO'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Icon(FontAwesomeIcons.arrowLeft)),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Card(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: const Center(
                            child: Row(
                              children: [
                                SizedBox(width: 110),
                                Text(
                                  'Add student',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (ctx) => const AdminAddSubject()));
                        },
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: const Center(
                            child: Row(
                              children: [
                                SizedBox(width: 110),
                                Text(
                                  'Add subject',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: const Center(
                            child: Row(
                              children: [
                                SizedBox(width: 110),
                                Text(
                                  'Add Exam',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Card(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: const Center(
                            child: Row(
                              children: [
                                SizedBox(width: 110),
                                Text(
                                  'MarkList',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signout(BuildContext ctx) async {
    final sharedprefs = await SharedPreferences.getInstance();
    sharedprefs.clear();
    // ignore: use_build_context_synchronously
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (ctx1) => const BoardingThree(),
        ),
        (route) => false);
  }
}
