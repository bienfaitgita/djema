import 'package:djema/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:djema/delayed_animation.dart';
import 'package:djema/main.dart';
import 'package:djema/welcome_page.dart';

bool obscurText = true;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//final GlobalKey<ScaffoldState> _scafoldKey = GlobalKey<ScaffoldState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
late String email;
late String password;

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void validation() {
    final FormState? _form = _formKey.currentState;

    if (!_form!.validate()) {
      // try {
      //   UserCredential result = await FirebaseAuth.instance
      //       .createUserWithEmailAndPassword(email: email, password: password);
      //   print(result.user!.uid);
      // } on FirebaseAuthException catch (e) {
      //   print('Failed with error code: ${e.code}');
      //   print(e.message);
      //   _scafoldKey.currentState!
      //       .showSnackBar(SnackBar(content: Text(e.message.toString())));
      // }
      print("Yes");
    } else {
      print("No");
    }
  }

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
      ),
      body: DelayedAnimation(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enregistrez-Vous",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: myBlue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == "") {
                                  return "Please fill UserName";
                                } else if (value!.length < 6) {
                                  return "Username is too short";
                                }
                              },
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: "UserName",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == "") {
                                  return "please Fill Phone Number";
                                } else if (value!.length < 11) {
                                  return "Your Number must be 11 caracter";
                                }

                                return "";
                              },
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: "Numéro de Téléphone",
                                  //icon: Icon(Icons.phone),
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == "") {
                                  return "Please Fill email";
                                } else if (!regExp.hasMatch(value!)) {
                                  return "Your Email is Wrong";
                                }
                                return "";
                              },
                              onChanged: (value) {
                                super.setState(
                                  () {
                                    email = value;
                                    print(email);
                                  },
                                );
                              },
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: obscurText,
                              validator: (value) {
                                if (value == "") {
                                  return "Please Fill password";
                                } else if (value!.length < 8) {
                                  return "Your password is too short";
                                }
                                return "";
                              },
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      setState(() {
                                        obscurText = !obscurText;
                                      });
                                    },
                                    child: Icon(
                                      obscurText == true
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder()),
                              onChanged: (value) {
                                setState(
                                  () {
                                    password = value;
                                    print(password);
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == "") {
                                  return "please Fill Phone Number";
                                } else if (value!.length < 120) {
                                  return "Your Number must be 11 caracter";
                                }
                                return "";
                              },
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  hintText: "Votre adresse (120)",
                                  //icon: Icon(Icons.phone),
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: myBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 125, vertical: 13)),
                        onPressed: () {
                          validation();
                        },
                        child: Text(
                          "Créer un compte",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("J'ai déjà un compte !",
                            style: GoogleFonts.poppins(
                                color: myBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            "Connexion",
                            style: GoogleFonts.poppins(
                                color: myBYellow,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
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
                              Navigator.pop(context);
                            },
                            child: Text(
                              "> SKIP",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        delay: 1000,
      ),
    );
  }
}
