import 'package:flutter/material.dart';
import 'package:projectedu/admin/folders/mainsection/choose.dart';
import 'package:projectedu/colors/colors.dart';
import 'package:projectedu/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final _username = 'admin';
  final _password = '050799';
  bool _passwordvisiblity = true;
  final _usernamecontoller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: colorlight,
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    'Enter Your Username And Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _usernamecontoller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.black54),
                    hintText: 'Enter Username',
                    hintStyle: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a Username';
                    }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.black54),
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.black12,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordvisiblity = !_passwordvisiblity;
                        });
                      },
                      icon: const Icon(Icons.visibility),
                    ),
                  ),
                  obscureText: _passwordvisiblity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a Username';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size(250.0, 50.0)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      colordark,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      checkLogin();
                    }
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin() async {
    final username = _usernamecontoller.text;
    final password = _passwordcontroller.text;
    if (username == _username && password == _password) {
      final sharedprefs = await SharedPreferences.getInstance();
      await sharedprefs.setBool(saveKey, true);
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => const ChooseSection(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Username or Password not match'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('ok'))
            ],
          );
        },
      );
    }
  }
}
