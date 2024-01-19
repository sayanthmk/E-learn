import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/pages/mainpage/main_page.dart';
import 'package:projectedu/colors/colors.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => const MainHome(),
                ),
              );
            },
            child: const Icon(FontAwesomeIcons.arrowLeft)),
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'PROFILE',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 226, 224, 218),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: colordark,
                  backgroundImage: AssetImage('images/profile2.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 200, 194),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.personHalfDress),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('My Account'),
                    ),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 200, 194),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.circleQuestion),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Help Center'),
                    ),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 200, 194),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.gear),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Settings'),
                    ),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 201, 200, 194),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.rightFromBracket),
                    title: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Logout'),
                    ),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
