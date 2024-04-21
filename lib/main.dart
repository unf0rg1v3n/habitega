import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() => runApp(Habitega());

class Habitega extends StatelessWidget {
  const Habitega({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF363636),
            appBar: AppBar(
                title: Image.asset("assets/icons/bar.png", // TODO: do it with StatefulWidget
                    width: 32, height: 32, color: const Color(0xFFD1D0D0)),
                backgroundColor: const Color(0xFF424141)),
            body: Container()));
  }
}
