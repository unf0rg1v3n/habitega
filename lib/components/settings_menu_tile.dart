import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';

class SettingsMenuTile extends StatelessWidget{
  const SettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 32, color: activeiconColor),
      title: Text(title, style: GoogleFonts.oswald(fontSize: fontSize20, color: Colors.white)),
      subtitle: Text(subTitle, style: GoogleFonts.oswald(color: Colors.white70)),
      trailing: trailing,
      onTap: onTap,
    );
  }
  
}