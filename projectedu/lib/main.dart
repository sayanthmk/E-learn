import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projectedu/client/studenthome/homepage.dart';
import 'firebase_options.dart';

const saveKey = 'Mykey';
const saveUser = 'MyUser';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SafeArea(
        child: Scaffold(
          body: OnboardingScreen(),
          // body: UserProfile(),
        ),
      ),
    );
  }
}
