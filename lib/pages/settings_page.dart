import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/components/settings_menu_tile.dart';
import 'package:iconsax/iconsax.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                padding: const EdgeInsets.fromLTRB(20, 54, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: GoogleFonts.oswald(
                        fontSize: fontSize54,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA065AA),
                      ),
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultSpace),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Set your own rules!",
                        style: GoogleFonts.oswald(
                          fontSize: fontSize32,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA065AA),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SettingsMenuTile(icon: Iconsax.personalcard, title: 'Name', subTitle: 'Enter your name', onTap: (){},),
                  SettingsMenuTile(icon: Iconsax.lock_1, title: 'Password', subTitle: 'Change your password', onTap: (){},),
                  SettingsMenuTile(icon: Iconsax.sound, title: 'Sounds', subTitle: 'Change the tunes', onTap: (){},),
                  SettingsMenuTile(icon: Iconsax.paintbucket, title: 'Appearance', subTitle: 'Custom view', onTap: (){},),
                  SettingsMenuTile(icon: Iconsax.airplane, title: 'Vacation mode', subTitle: 'Enable to skip all your habits',
                    trailing: Switch(value: false, onChanged: (value) {}),),
                  SizedBox(height: 50),
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
                            "Logout",
                            style: GoogleFonts.oswald(color: Colors.white70)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  

}