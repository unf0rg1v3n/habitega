import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/components/my_textfield.dart';
import 'package:hebitega/design/colors.dart';
import 'package:hebitega/design/dimensions.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 54.0),
              child: Text(
                "HabitEga",
                style: GoogleFonts.oswald(   //oswald or poppins?
                  fontSize: fontSize54,
                  fontWeight: FontWeight.w500,
                  color: titleColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Login to\nyour account",
              style: GoogleFonts.oswald(
                fontSize: fontSize32,
                fontWeight: FontWeight.w500,
                color: titleColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 56,
                    left: 24,
                    bottom: 10,
                    right: 24,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextField(
                          controller: usernameController,
                          hintText: "Username",
                          obscureText: false,
                        ),
                        const SizedBox(height: 16),
                        MyTextField(
                            controller: passwordController,
                            hintText: "Password",
                            obscureText: true),
                        const SizedBox(height: 8),
                      ]
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                "Forgot your password?",
                style: GoogleFonts.oswald(color: AppBarColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: activeiconColor,
                  fixedSize: const Size(double.infinity, 40),
                ),
                onPressed: (){},
                child: Text(
                  "Login",
                  style: GoogleFonts.oswald(color: Colors.white70)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: activeiconColor,
                  fixedSize: const Size(double.infinity, 40),
                ),
                onPressed: (){},
                child: Text(
                    "Create Account",
                    style: GoogleFonts.oswald(color: Colors.white70),
                ),
              ),
            ),
          ),
      ],
    ),
      )
    );
  }
}