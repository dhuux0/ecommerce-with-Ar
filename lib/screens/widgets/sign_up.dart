import 'package:dukaaan/screens/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:dukaaan/constants/const.dart';
import 'package:flutter/widgets.dart';

// S
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

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
                'Welcome to Shelly Shopping!',
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
                          Icons.person,
                          color: Colors.grey,
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 50,),
                    TextButton(
                      onPressed: () {
                        // Navigate to the home page when "Sign Up" is tapped
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      
                      child: const Text(
                        ' Sign up',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle sign up with Gmail
                            },
                            icon: const Icon(Icons.mail),
                            label: const Text('Sign Up with Gmail'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle sign up with Facebook
                            },
                            icon: const Icon(Icons.facebook),
                            label: const Text('Sign Up with Facebook'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
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
