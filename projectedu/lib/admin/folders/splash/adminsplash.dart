import 'package:flutter/material.dart';
import 'package:projectedu/admin/folders/login/adminlogin.dart';
import 'package:projectedu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminSplash extends StatefulWidget {
  const AdminSplash({super.key});

  @override
  State<AdminSplash> createState() => _AdminSplashState();
}

class _AdminSplashState extends State<AdminSplash> {
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
          'images/photo1.png',
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
        MaterialPageRoute(builder: (ctx) => const AdminLogin()));
  }

  Future<void> checkloggedin() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final userlogged = sharedprefs.getBool(saveKey);
    if (userlogged == null || userlogged == false) {
      gotologin();
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => const AdminLogin()),
      );
    }
  }
}
