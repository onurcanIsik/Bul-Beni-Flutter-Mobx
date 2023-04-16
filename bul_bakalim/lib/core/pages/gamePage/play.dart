import 'package:bul_bakalim/core/color/colors.dart';
import 'package:bul_bakalim/core/model/random_num.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/homepage_widget.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final randomNumber = RandomNumber();
  Function? deneme;
  int? answer;

  void yenileNum() {
    setState(() {
      randomNumber.generateRandomNumbers();
      answer = randomNumber.firstNumber! + randomNumber.secondNumber!;
    });
  }

  @override
  void initState() {
    super.initState();
    yenileNum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          bgColors(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: txtColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Bul Beni ?",
                                style: GoogleFonts.pacifico(
                                  fontSize: 30,
                                  color: btnColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                "1/20",
                                style: GoogleFonts.pacifico(
                                  fontSize: 30,
                                  color: btnColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                "3 ❤️",
                                style: GoogleFonts.pacifico(
                                  fontSize: 30,
                                  color: btnColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          "${randomNumber.firstNumber} + ${randomNumber.secondNumber}",
                          style: GoogleFonts.comfortaa(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AnswerBtn(
                  answr: answer ?? 0,
                ),
                BtnNext(
                  deneme: yenileNum,
                ),
                const BtnPass(),
                const BackBtn(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
