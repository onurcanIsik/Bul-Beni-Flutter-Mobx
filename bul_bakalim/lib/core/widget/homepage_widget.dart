// ignore_for_file: must_be_immutable, unrelated_type_equality_checks

import 'dart:math';

import 'package:bul_bakalim/core/model/random_num.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color/colors.dart';
import '../pages/gamePage/play.dart';

Widget bgColors() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          bgGrad.withOpacity(0.4),
          bgGrad2.withOpacity(0.9),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  );
}

class BtnGame extends StatelessWidget {
  BtnGame({Key? key, required this.btnName, required this.page})
      : super(key: key);
  String btnName;
  dynamic page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Get.to(page),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                offset: Offset(4, 3),
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.black45,
              )
            ],
            color: txtColor,
            borderRadius: BorderRadius.circular(26),
          ),
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 10,
          child: Center(
            child: Text(
              btnName,
              style: GoogleFonts.comfortaa(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: btnColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AnswerBtn extends StatelessWidget {
  AnswerBtn({Key? key, required this.answr}) : super(key: key);
  final randomNumber = RandomNumber();
  int answr;
  List<int> shuffleAnswers() {
    List<int> answers = [
      answr,
      Random().nextInt(1000),
      Random().nextInt(1000),
    ];

    answers.shuffle();

    return answers;
  }

  @override
  Widget build(BuildContext context) {
    List<int> shuffledAnswers = shuffleAnswers();
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          maBtn(
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 1.7,
              child: Center(
                child: Text(
                  '${shuffledAnswers[0]}',
                  style: GoogleFonts.comfortaa(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: txtColor),
                ),
              ),
            ),
          ),
          maBtn(
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 1.7,
              child: Center(
                child: Text(
                  '${shuffledAnswers[1]}',
                  style: GoogleFonts.comfortaa(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: txtColor),
                ),
              ),
            ),
          ),
          maBtn(
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 1.7,
              child: Center(
                child: Text(
                  '${shuffledAnswers[2]}',
                  style: GoogleFonts.comfortaa(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: txtColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget maBtn(Widget maWidget) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: maWidget,
      ),
    );
  }
}

class BtnPass extends StatelessWidget {
  const BtnPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: redColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 22,
          width: MediaQuery.of(context).size.width / 1.2,
          child: Center(
            child: Text(
              "Pass",
              style: GoogleFonts.comfortaa(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: txtColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BtnNext extends StatelessWidget {
  BtnNext({Key? key, required this.deneme}) : super(key: key);
  Function deneme;

  final random = RandomNumber();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          deneme();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 22,
          width: MediaQuery.of(context).size.width / 1.2,
          child: Center(
            child: Text(
              "Next",
              style: GoogleFonts.comfortaa(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: txtColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackBtn extends StatelessWidget {
  const BackBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: txtColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 22,
          width: MediaQuery.of(context).size.width / 1.2,
          child: Center(
            child: Text(
              "Home",
              style: GoogleFonts.comfortaa(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: btnColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
