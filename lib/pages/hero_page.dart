import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 267,
          color: Color(0xFFF5EFF7),
          alignment: Alignment.topCenter,
          child: Align(alignment: Alignment.bottomCenter, child: Image.asset("assets/images/egor.png"))), // Сделать возможность добавления своего аватара
      const Padding(padding: EdgeInsets.all(16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Egor-chad", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Text("id0000001", style: TextStyle(fontSize: 12))
        ]),
        Text("161 ур.", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: "Oswald-bold"))
      ])),
      Container(child: Column())
    ]);
  }
}
