import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Homescreens/fristscreen.dart';
import 'creatanaccount.dart';
import 'forgetpassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool obscurePassword = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context); // الرجوع للصفحة السابقة
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 20),

          // ============ LOGO ============
                Center(
                  child: SizedBox(
                    height: 100,
                    child: Image.asset(
                      "assets/Tal3a.png", // ← لوجو التطبيق
                      fit: BoxFit.contain,
                      color: Colors.black,
                    ),
                  ),
                ),

          const SizedBox(height: 20),

          // ============ WELCOME TEXT ============
          Text(
            'Hi, Welcome Back!',
            style: GoogleFonts.inter(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'Hello again, you ve been missed!',
          style: GoogleFonts.inter(
            fontSize: 16,
            color: const Color(0xFF4A90E2),
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 50),

        // ============ EMAIL FIELD ============
        Text(
          'Email',
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF4A90E2),
          ),
        ),

        const SizedBox(height: 8),

        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Please Enter Your Email',
            hintStyle: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            filled: true,
            fillColor: Colors.grey[50],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF4A90E2), width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),

        const SizedBox(height: 20),

        // ============ PASSWORD FIELD ============
        Text(
          'Password',
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF4A90E2),
          ),
        ),

        const SizedBox(height: 8),

        TextField(
          controller: passwordController,
          obscureText: obscurePassword,
          decoration: InputDecoration(
            hintText: 'Please Enter Your Password',
            hintStyle: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            filled: true,
            fillColor: Colors.grey[50],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF4A90E2), width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey[600],
              ),
              onPressed: () {
                setState(() {
                  obscurePassword = !obscurePassword;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 12),

        // ============ REMEMBER ME ============
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
                activeColor: const Color(0xFF4A90E2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Remember Me',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        // ============ LOGIN BUTTON ============
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4A90E2),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            onPressed: () {
              // Handle login
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const fristscreen(),
                ),
              );
            },
            child: Text(
              'Login',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // ============ FORGET PASSWORD ============
        Center(
          child: TextButton(
            onPressed: () {
              // Handle forget password
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const forgetoassword(),
                ),
              );
            },
            child: Text(
              'Forget your password ?',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Color(0xFF14304A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // ============ OR LOGIN WITH ============
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey[300], thickness: 1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                ' Or login with ',
                style: GoogleFonts.inder(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight:FontWeight.bold
                ),
              ),
            ),
            Expanded(child: Divider(color: Colors.grey[300], thickness: 1)),
          ],

        ),

        const SizedBox(height: 25),

        // ============ SOCIAL BUTTONS ============
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Apple
            _buildSocialButton(
              icon: Icons.apple,
              onTap: () {},
            ),

            const SizedBox(width: 20),

            // Google
            _buildSocialButton(
              icon: Icons.g_mobiledata_sharp,
              onTap: () {},
            ),

            const SizedBox(width: 20),

            // Facebook
            _buildSocialButton(
              icon: Icons.facebook,

              onTap: () {},
            ),
          ],
        ),

        const SizedBox(height: 30),

        // ============ CREATE ACCOUNT ============
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account ?',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Color(0xFFC4C4C4),
                  fontWeight: FontWeight.bold,

                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to signup
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccountScreen(),
                    ),
                  );
                },
                child: Text(
                  'Create an Account',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: const Color(0xFF097ABA),
                    fontWeight: FontWeight.bold,
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
    );
  }

  // ============ SOCIAL BUTTON WIDGET ============
  Widget _buildSocialButton({
    IconData? icon,
    String? imagePath,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey[300]!, width: 1.5),
        ),
        child: Center(
          child: icon != null
              ? Icon(icon, size: 32, color: Colors.black)
              : Image.asset(imagePath!, width: 28, height: 28),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}