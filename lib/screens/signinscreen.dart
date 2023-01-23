import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medme/screens/homescreen.dart';
import 'package:medme/screens/mobilenumber.dart';
import 'package:medme/widget/whitebutton.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return homescreen(result: reslut);
      }));
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
          backgroundColor: Color(0xfffF7F7F7),
          body: Stack(
            children: [
              Image(
                image: AssetImage("images/back.png"),
                fit:BoxFit.cover
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("images/logo.png"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return mobilenumber();
                        }));
                      },
                      child: whitebutt(
                        text: "Continue With Phone",
                        image: "phone-call.png",
                        color: Colors.red,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  whitebutt(
                    text: "Continue With Facebook",
                    image: "facebook.png",
                    color: Color(0xfffF7F7F7),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: (() {
                        googleLogin();
                      }),
                      child: whitebutt(
                        text: "Continue With Google",
                        image: "search.png",
                        color: Colors.red,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  whitebutt(
                      text: "Continue With Email",
                      image: "email.png",
                      color: Color(0xfffF7F7F7))
                ],
              ),
            ],
          ))),
    );
  }
}
