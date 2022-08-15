// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:login_firebase_1st/service/authenticationservice.dart';
import 'package:login_firebase_1st/view/loginscreen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.teal.shade200,
              Colors.blueGrey.shade900,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 35,
              child: Stack(alignment: Alignment.topLeft, children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(89),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/scholar.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80),
                    ),
                    color: Color.fromARGB(226, 105, 180, 186),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    icon: Icon(Icons.arrow_back_ios_new_sharp)),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <TextSpan>[
                            TextSpan(
                              text: "SignUp Dashboard\n",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            ),
                            TextSpan(
                                text: "Fill Up To Continue",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        cursorColor: Colors.white,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              decorationColor: Colors.white,
                              color: Colors.white),
                          controller: _nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 6, 6),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 8, 9),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            helperStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelText: 'Name',
                            helperText: 'Enter your Name',
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(cursorColor: Colors.white,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              decorationColor: Colors.white,
                              color: Colors.white),
                          controller: _emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 6, 6),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 8, 9),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            helperStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelText: 'E-mail',
                            helperText: 'Enter your E-mail',
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: TextField(
                        cursorColor: Colors.white,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              decorationColor: Colors.white,
                              color: Colors.white),
                          controller: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 6, 6),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 8, 8, 9),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            helperStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelText: 'Password',
                            helperText: 'Enter your Password',
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:18.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      final message = await AuthService().registration(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      if (message!.contains('Success')) {
                        Navigator.of(context).pop(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
