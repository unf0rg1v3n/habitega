import 'package:flutter/material.dart';
import 'package:hebitega/design/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/design/dimensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

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
      Padding(
          //Блок информации о игроке -- Имя, ID, уровень
          padding: const EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Egor-chad",
                  style: GoogleFonts.oswald(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
              Text("id0000001",
                  style: GoogleFonts.oswald(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.black))
            ]),
            Text("161 ур.",
                style: GoogleFonts.oswald(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.black))
          ])),
      Padding(
          padding: const EdgeInsets.fromLTRB(28, 0, 28, 16),
          child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(16),
              value: 0.34,
              // сделать динамическим
              minHeight: 14)),
      Achievements(),
      CharacteristicsWidget()
    ]);
  }
}



// Отвечает за выведение характеристик героя на странице hero_page
class CharacteristicsWidget extends StatefulWidget {
  const CharacteristicsWidget({super.key});

  @override
  State<CharacteristicsWidget> createState() => _CharacteristicsWidgetState();
}

class _CharacteristicsWidgetState extends State<CharacteristicsWidget> {
  var forceValue = 10;
  var durabilityValue = 10;
  var manaValue = 10;
  var dexterityValue = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
            color: Colors.white,
            width: 380,
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Харастеристики: ",
                            style: GoogleFonts.oswald(
                                fontSize: fontSize24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        Container(
                            width: 35,
                            height: 35,
                            child: TextButton(
                                onPressed: () => {},
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFFFFD8E4)),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))))),
                                child:
                                    SvgPicture.asset("assets/icons/plus.svg")))
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Сила",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)), Text("$forceValue",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Выносливость",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$durabilityValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Мана",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)), Text("$manaValue",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ловкость",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$dexterityValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ])
                  ]))
            ])));
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

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
            width: 380,
            height: 172,
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15))
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
                  TextButton(
                      onPressed: () => {},
                      style: const ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))))),
                      child: const Center(child: Text("View more ->")))
                ])));
  }
}
