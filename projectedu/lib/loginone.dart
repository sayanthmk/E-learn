import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectedu/client/otherpages/selectionscreen/select.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final _nameController = TextEditingController();

  final _mailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(250, 244, 225, 1),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BoardingThree()));
                          },
                          child: const Icon(
                            FontAwesomeIcons.arrowLeft,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/loginimage.png',
                              width: 200,
                              cacheWidth: 200,
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Onboard',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('Lets start our journy')],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Name',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'name',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Name is empty';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Mail-ID',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            controller: _mailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'mail',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'E-Mail is empty';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password is empty';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Confirm-Password',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            controller: _confirmController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'password',
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value != _passwordController) {
                                return 'Does not match the password';
                              } else {
                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             const SubjectScreen()));
                                    },
                                    child: const Text(
                                      'NEXT',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  const Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    )
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
