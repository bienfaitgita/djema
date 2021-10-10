import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:djema/delayed_animation.dart';
import 'package:djema/main.dart';
import 'package:djema/welcome_page.dart';
import 'package:djema/register_page.dart';
import 'package:djema/tools_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
        ),
      ),
      body: DelayedAnimation(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Connecter vous",
                      style: GoogleFonts.poppins(
                          color: myBlue,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Ici vous déclarez les objets que vous possédez et que vous pouvez mettre à la disposition des autres et vous avez accès à ceux des autres.",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    LoginForm(),
                    SizedBox(
                      height: 80,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: myBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 125, vertical: 13)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApp()));
                        },
                        child: Text(
                          "Se connecter",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("Je n'ai pas encore un compte !",
                            style: GoogleFonts.poppins(
                                color: myBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text(
                              "Inscription",
                              style: GoogleFonts.poppins(
                                  color: myBYellow,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 50,
                          right: 20,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ToolsPage(),
                              ),
                            );
                          },
                          child: Text(
                            "> SKIP",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        delay: 1500,
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Votre Mail"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: "Mot de passe",
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
