import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController controller = PageController();
  int current = 0;

  // ================= PAGE DATA =================
  final List<Map<String, String>> pages = [
    {
      "image": "assets/Traveling1.png", // ← حط هنا صورة الصفحة الأولى
      "text":
      "Discover your country in a new way! Get ready for an enjoyable tourist experience within your country with ease",
      "btn": "NEXT"
    },
    {
      "image": "assets/Traveling2.png", // ← صورة الصفحة الثانية
      "text":
      "Choose according to your budget. The app helps you choose the right places and trips for your budget and time",
      "btn": "NEXT"
    },
    {
      "image": "assets/Traveling3.png", // ← صورة الصفحة الثالثة
      "text":
      "Everything you need in one place from organizing the trip to suggesting activities and services everything is at your fingertips!",
      "btn": "FINISH"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00A2FF), Color(0xFF0B70AA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        // PAGE CONTENT
        child: Column(
          children: [
            const SizedBox(height: 50),

            // ============ TOP LOGO ============
            SizedBox(
              height: 120,
              child: Image.asset(
                "assets/Tal3a.png", // ← لوجو التطبيق
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            // ============ PAGES ============
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    current = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // ----- MAIN IMAGE -----
                      SizedBox(
                        height: 300,
                        child: Image.asset(
                          pages[index]["image"]!,
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(height: 40),

                      // ----- TEXT -----
                      Text(
                        pages[index]["text"]!,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 50),
                    ],
                  );
                },
              ),
            ),

            // ============ INDICATORS ============
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                    (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 8,
                  width: current == index ? 25 : 10,
                  decoration: BoxDecoration(
                    color: current == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ============ BUTTON ============
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF0B70AA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  if (current == pages.length - 1) {
                    // FINISH
                    Navigator.pop(context);
                  } else {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
                child: Text(
                  pages[current]["btn"]!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
