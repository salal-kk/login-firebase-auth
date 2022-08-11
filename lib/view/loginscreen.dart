// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:login_firebase_1st/service/authenticationservice.dart';
import 'package:login_firebase_1st/view/homescreen.dart';
import 'package:login_firebase_1st/view/registrationscreen.dart';
import 'package:flutter_login/flutter_login.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 30,
                  child: Stack(alignment: Alignment.center, children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(33),
                        bottomLeft: Radius.circular(33)
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          "assets/loginscreen.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]
                  ),
                ),
                Expanded(
                  flex: 35,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 10, right: 10),
                        child: TextField(
                          cursorColor: Colors.white,
                            style: TextStyle(fontFamily: "Poppins",decorationColor: Colors.white,color: Colors.white),
                            controller: _emailController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: IconTheme(data: IconThemeData(
            color: Colors.white
          ),child: Icon(Icons.man_sharp)),
                              
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),helperStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                              
                              labelText: 'Username',
                              
                              helperText: 'Enter your Username',
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          cursorColor: Colors.white,
                            style: TextStyle(fontFamily: "Poppins",color: Colors.white),
                            controller: _passwordController,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              counterStyle: TextStyle(color: Colors.white),
                              prefixIcon: IconTheme(data: IconThemeData(
            color: Colors.white
          ),child: Icon(Icons.lock_person_rounded)),
                            
                              
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
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
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegistrationScreen()));
                                },
                                icon: Icon(Icons
                                    .create), //icon data for elevated button
                                label: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      decorationThickness: 3,
                                      textBaseline: TextBaseline.alphabetic,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ), //label text
                                style: (ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(10),
                                    alignment: Alignment.bottomRight,
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.teal))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.add_task),

                                onPressed: () async {
                                  final message = await AuthService().login(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  );

                                  if (message!.contains('Success')) {
                                    // print(email);
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setBool("isLoggedIn", true);
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(message),
                                    ),
                                  );
                                },
                                label: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      decorationThickness: 3,
                                      textBaseline: TextBaseline.alphabetic,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
                                ),
                                style: ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(10),
                                    alignment: Alignment.bottomRight,
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.teal.shade600)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Divider(height: 5,thickness: 0.1,endIndent: 30,indent: 30,color: Colors.black,),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
