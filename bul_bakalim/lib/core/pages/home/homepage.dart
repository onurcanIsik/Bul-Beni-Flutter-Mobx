import 'package:bul_bakalim/core/color/colors.dart';
import 'package:bul_bakalim/core/pages/gamePage/how_to_play.dart';
import 'package:bul_bakalim/core/pages/gamePage/play.dart';
import 'package:bul_bakalim/core/pages/settings/settings.dart';
import 'package:bul_bakalim/core/widget/homepage_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        bgColors(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Text(
                  "Bul Beni ?",
                  style: GoogleFonts.pacifico(fontSize: 70, color: txtColor),
                ),
              ),
              BtnGame(btnName: "Play 🏁", page: const PlayPage()),
              BtnGame(btnName: "How To Play", page: const HowToPlay()),
              BtnGame(btnName: "Settings", page: const SettingsPage()),
            ],
          ),
        )
      ],
    );
  }
}
