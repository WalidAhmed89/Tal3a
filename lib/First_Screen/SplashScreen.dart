import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tal3a/First_Screen/test.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 4000),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => test()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00A2FF), Color(0xFF0B70AA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Center(
              child: Image.asset(
                "assets/images/tal3a.png",
                fit: BoxFit.contain,
              ),
            ),

            // باقي الصفحة
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}