import 'package:flutter/material.dart';

class onBoardScreen extends StatelessWidget {
  const onBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00A2FF), Color(0xFF0B70AA)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Image.asset("assets/Tal3a.png", fit: BoxFit.contain),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 327,
                    width: 327,
                    child: Image.asset(
                      "assets/Traveling1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  Text("Discover your country in a new way! Get ready for an enjoyable tourist experience within your country with ease",
                    style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
