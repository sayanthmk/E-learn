import 'package:flutter/material.dart';
import 'package:projectedu/admin/folders/splash/adminsplash.dart';
import 'package:projectedu/client/login/usresplash/usersplash.dart';

class BoardingThree extends StatefulWidget {
  const BoardingThree({super.key});

  @override
  State<BoardingThree> createState() => _BoardingThreeState();
}

class _BoardingThreeState extends State<BoardingThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(250, 244, 225, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromRGBO(250, 244, 225, 1),
              child: Image.asset(
                'images/photo3.png',
                width: 300,
                cacheWidth: 400,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(89, 87, 89, 87),
                            offset: Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ],
                        color: const Color.fromARGB(255, 238, 222, 5)),
                    width: 200,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UserSplash()));
                            },
                            child: const Text(
                              'STUDENT',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminSplash()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(89, 87, 89, 87),
                              offset: Offset(
                                3.0,
                                3.0,
                              ),
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                            ), //BoxShadow
                          ],
                          color: Colors.amber),
                      width: 200,
                      height: 40,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'TEACHER',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
