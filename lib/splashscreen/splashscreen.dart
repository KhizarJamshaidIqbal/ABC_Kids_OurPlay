// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';

import '../view/screens/ABC.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const ABC_APP())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
           Center(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: const Image(
                image: AssetImage('assets/images/SplashScreen.gif'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
