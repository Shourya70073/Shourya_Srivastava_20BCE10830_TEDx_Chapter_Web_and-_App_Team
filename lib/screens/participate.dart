import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/widget/whitebutton.dart';

class participate extends StatefulWidget {
  const participate({super.key});

  @override
  State<participate> createState() => _participateState();
}

class _participateState extends State<participate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                        ),
                        Icon(
                          Icons.group,
                          size: 30,
                        ),
                        Icon(
                          Icons.add,
                          size: 30,
                        ),
                        Icon(
                          Icons.contact_mail,
                          size: 30,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Teams",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Part",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset("images/logo.png"),
                    )
                  ],
                ),
              ),
              Text("Join TEDxVITBHOPAL College",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              SizedBox(
                height: 20,
              ),
              Text("Want to become part of a society that pushes for new ideas?"),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 13, 0, 0),
                        child: Text(
                          "Become a TEDx Conference Speaker",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text(
                          "Interested in speaking at a TEDx event? Express your interest here! ",
                          style: TextStyle(color: Colors.grey[900], fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      whitebutt(
                          text: "Sign Up (Speakers) ",
                          image: "",
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 13, 0, 0),
                        child: Text(
                          "Become a TEDx Conference Volunteer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text(
                          "We are grateful for every one of our volunteers! Want to help out at a TEDx event? Sign up below! ",
                          style: TextStyle(color: Colors.grey[900], fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      whitebutt(
                          text: "Sign Up (Volunteers) ",
                          image: "",
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 13, 0, 0),
                        child: Text(
                          "Get involved in a monthly event",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text(
                          "Want to be involved with a smaller TEDx event? This is perfect for you!",
                          style: TextStyle(color: Colors.grey[900], fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      whitebutt(
                          text: "Sign Up (Monthly Event) ",
                          image: "",
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
