import 'package:djema/login_page.dart';
import 'package:djema/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:djema/delayed_animation.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1000,
                child: Container(
                  height: 200,
                  child: Image.asset("images/logo.png"),
                ),
              ),
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 400,
                  child: Image.asset("images/img_1.png"),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                      "Plateforme de prêt d’objets entre particuliers... Vous souhaitez en savoir plus sur notre offre, nos nouveautés ?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 19)
                      ),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: myBlue,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(13)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text("COMMENCER MAINTENANT")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
