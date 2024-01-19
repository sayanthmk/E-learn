import 'package:flutter/material.dart';
import 'package:projectedu/client/login/userlog/userlogin.dart';
import 'package:projectedu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSplash extends StatefulWidget {
  const UserSplash({super.key});

  @override
  State<UserSplash> createState() => _UserSplashState();
}

class _UserSplashState extends State<UserSplash> {
  @override
  void initState() {
    checkloggedin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/loginimage.png',
          height: 300,
          width: 300,
        ),
      ),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const UserLogin()));
  }

  Future<void> checkloggedin() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final userlogged = sharedprefs.getBool(saveUser);
    if (userlogged == null || userlogged == false) {
      gotologin();
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => const UserLogin()),
      );
    }
  }
}
