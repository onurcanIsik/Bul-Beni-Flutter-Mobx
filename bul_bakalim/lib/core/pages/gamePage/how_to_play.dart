import 'package:bul_bakalim/core/color/colors.dart';
import 'package:bul_bakalim/core/widget/homepage_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: txtColor,
        leading: bckBtn(),
        title: Text(
          "How To Play ?",
          style: GoogleFonts.comfortaa(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Stack(
        children: [
          bgColors(),
        ],
      ),
    );
  }

  Widget bckBtn() {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: btnColor,
      ),
    );
  }
}
