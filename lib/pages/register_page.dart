import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/components/my_textfield.dart';
import 'package:hebitega/design/colors.dart';
import 'package:hebitega/design/dimensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';


class RegisterPage extends StatefulWidget{
   const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
        children: [
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 54.0),
              child: Text(
                "HabitEga",
                style: GoogleFonts.poppins(
                  fontSize: fontSize54,
                  fontWeight: FontWeight.w500,
                  color: AppBarColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Let's create\nyour account",
              style: GoogleFonts.poppins(
                fontSize: fontSize32,
                fontWeight: FontWeight.w500,
                color: AppBarColor,
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
                        controller: emailController,
                        hintText: "Email",
                        obscureText: false),
                    const SizedBox(height: 8),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
                width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: activeiconColor,
                  fixedSize: const Size(double.infinity, 40),
                ),
                onPressed: (){},
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                      color: Colors.white70,
                    fontSize: fontSize16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      )
    );

  }
}