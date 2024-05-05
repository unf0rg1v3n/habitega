import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          height: 267,
          color: const Color(0xFFF5EFF7),
          alignment: Alignment.topCenter,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/egor.png"))),
      // Сделать возможность добавления своего аватара
      const Padding(
          padding: EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Egor-chad",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
              Text("id0000001", style: TextStyle(fontSize: 12))
            ]),
            Text("161 ур.",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Oswald-bold")) //
          ])),
      Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Container(
              width: 380,
              height: 172,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                //border: Border.all(width: 1)
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Achievement(
                                  "assets/icons/achievements_icons/star.svg",
                                  "King of Seduction"),
                              Achievement(
                                  "assets/icons/achievements_icons/flag.svg",
                                  "CTF Winner"),
                              Achievement(
                                  "assets/icons/achievements_icons/school.svg",
                                  "Disappoint the Dean")
                            ])),
                    ElevatedButton(
                        onPressed: () => {},
                        child: const Center(child: Text("View more ->")),
                        style: const ButtonStyle())
                  ])))
    ]);
  }
}

class Achievement extends StatelessWidget {
  final String path;
  final String description;

  const Achievement(this.path, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xFFE8DEF8)),
        width: 82,
        height: 90,
        //color: Color(0xFFE8DEF8),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SvgPicture.asset(
            path,
            width: 50,
            height: 50,
          ),
          Container(
              alignment: Alignment.center,
              width: 65,
              height: 24,
              child: Text(description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 8.0,
                      overflow: TextOverflow.clip,
                      leadingDistribution:
                          TextLeadingDistribution.proportional)))
        ]));
  }
}
