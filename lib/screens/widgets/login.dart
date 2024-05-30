// ignore_for_file: unnecessary_const, sized_box_for_whitespace

import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/screens/views/home_page.dart';
import 'package:dukaaan/screens/widgets/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryColor, kSecondaryColor],
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'hello\nwelcome to\n shelly shopping! ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'Gmail',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        label: Text(
                          'password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "forgot password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the home page when "Sign In" is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage()), // Navigate to SignUpScreen
                        );
                      },
                      child: Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [kPrimaryColor, kSecondaryColor],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate to the sign-up screen when "Sign Up" is tapped
                              // Navigator.pushReplacementNamed(
                              //     context, '/signup');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SignUpScreen()), // Navigate to SignUpScreen
                              );
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
