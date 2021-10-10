import 'package:djema/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:djema/delayed_animation.dart';
import 'package:djema/main.dart';
import 'package:djema/welcome_page.dart';
import 'package:djema/register_page.dart';



class ToolsPage extends StatelessWidget {
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomePage()));
          },
        ),
        actions: [          
          Row(            
            children: [              
              IconButton(
          icon: Icon(
            Icons.account_circle,
            color: myBYellow,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
          
        ),
        // Text("",
        //   style: GoogleFonts.poppins(
        //     color: myBlue,
        //     fontSize: 20,
        //     ),
        //   )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                      child: Text(
                        "Outils Disponible",
                        style: GoogleFonts.poppins(
                            color: myBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      delay: 1500),
                  SizedBox(
                    height: 22,
                  ),
                  DelayedAnimation(
                      child: Text(
                        "Vous avez accès à vos objet et ceux des autres.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      delay: 2500),
                  SizedBox(
                    height: 35,
                  ),
                  
                  SizedBox(
                    height: 80,
                  ),
                  DelayedAnimation(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              primary: myBYellow,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 13)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyApp()));
                          },
                          child: Text(
                            "Ajouter au panier",
                            style: GoogleFonts.poppins(
                                color: myBlue,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      delay: 3500),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      DelayedAnimation(
                      child: Text("Je n'ai pas encore un compte !",
                      style: GoogleFonts.poppins(
                                      color: myBlue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                      delay: 3500),
                     
                      DelayedAnimation(
                      child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                            },
                            child: DelayedAnimation(
                                child: Text(
                                  "Inscription",
                                  style: GoogleFonts.poppins(
                                      color: myBYellow,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                delay: 3500)
                              ),

                      delay: 3500),
                    ],
                  ),
 
                ],
              ),
            )
          ],
        ),
      ),
      
    );
    
  }
}

