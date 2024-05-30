// ignore_for_file: unused_import

import 'package:dukaaan/screens/views/home_page.dart';
import 'package:dukaaan/screens/widgets/login.dart';
import 'package:dukaaan/screens/widgets/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      routes: {
        //loginScreen':(context) =>  const loginScreen(),
        //     '/login': (context) => LoginScreen(),
        // '/signup': (context) => SignUpScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  ));
}
