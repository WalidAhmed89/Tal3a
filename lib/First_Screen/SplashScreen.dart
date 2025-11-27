import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tal3a/First_Screen/onBoardScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // الانتقال للصفحة التالية بعد 3 ثواني
    Timer(
      const Duration(milliseconds: 4000),
          () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnBoardScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00A2FF), Color(0xFF0B70AA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ============ LOGO ============
              Image.asset(
                "assets/Tal3a.png",
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              // ============ LOADING INDICATOR ============
              const CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}