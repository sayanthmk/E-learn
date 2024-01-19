import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/otherpages/selectionscreen/select.dart';
import 'package:projectedu/client/pages/calender/calender.dart';
import 'package:projectedu/client/pages/profile_page/userprofile.dart';
import 'package:projectedu/client/pages/subjects/subjects.dart';
import 'package:projectedu/firebase/firestore/firehome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
                                //show signout dialog

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
                          const SizedBox(
                            width: 90,
                          ),
                          const Text(
                            'Educare',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const UserProfile()));
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor:
                                      Color.fromARGB(255, 230, 34, 34),
                                  backgroundImage:
                                      AssetImage('images/profile2.png'),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const SubjectScreen()));
                              },
                              child: const CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor: Colors.green,
                                  backgroundImage:
                                      AssetImage('images/subject.png'),
                                ),
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Subject',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                backgroundImage: AssetImage('images/exams.png'),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Exams',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FireStoreHome()));
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  backgroundImage:
                                      AssetImage('images/marklist2.png'),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'MarkList',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: Colors.green,
                                backgroundImage:
                                    AssetImage('images/progress.png'),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Progress',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (ctx) => const Calender(),
                              ),
                            );
                          },
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor: Colors.green,
                                  backgroundImage:
                                      AssetImage('images/calender.png'),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Calender',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
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
