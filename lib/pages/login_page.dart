import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/design/colors.dart';
import 'package:hebitega/design/dimensions.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 54.0),
              child: Text(
                "HabitEga",
                style: GoogleFonts.poppins(
                  fontSize: 54.0,
                  fontWeight: FontWeight.w500,
                  color: AppBarColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64.0),
            child: Text(
              "Login to\nyour account",
              style: GoogleFonts.poppins(
                fontSize: 26.0,
                fontWeight: FontWeight.w500,
                color: AppBarColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: activeiconColor,
                hintText: "Username or email",
                hintStyle: GoogleFonts.poppins(
                    color: Colors.white54
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: activeiconColor,
                hintText: "Password",
                hintStyle: GoogleFonts.poppins(
                    color: Colors.white54
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                "Forgot your password?",
                style: GoogleFonts.poppins(color: AppBarColor),
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
                child: Text("Login"),
              ),
            ),
          ),
      ],
    ),
    );
  }
}