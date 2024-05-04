import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/design/colors.dart';
import 'package:hebitega/design/dimensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../design/icons.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
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
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Symbols.person),
                          labelText: "Username",
                          fillColor: activeiconColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          )
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Symbols.email),
                          labelText: "Email",
                          fillColor: activeiconColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          )
                      ),


                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Symbols.password),
                          labelText: "Password",
                          filled: true,
                          fillColor: activeiconColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: activeiconColor, width: 2),
                          )
                      ),
                    ),
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