import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popover/popover.dart';
import 'menu_items.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
          context: context,
          bodyBuilder: (context) => MenuItems(),
          width: 250,
          height: 150,
      ),
      child: const Icon(Iconsax.add),
    );
  }
}