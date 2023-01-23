import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/screens/participate.dart';
import 'package:medme/screens/teams.dart';
import 'package:medme/widget/whitebutton.dart';
import 'package:medme/widget/yellowbutton.dart';

class details extends StatefulWidget {
  late String name;

  details({super.key, required this.name});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  List<String> l = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis elementum nibh tellus molestie nunc. Rutrum quisque non tellus orci ac auctor augue mauris augue. Quisque sagittis purus sit amet volutpat. At in tellus integer feugiat scelerisque. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Tincidunt arcu non sodales neque sodales ut etiam. Auctor neque vitae tempus quam pellentesque. Lorem sed risus ultricies tristique nulla. Vulputate sapien nec sagittis aliquam malesuada bibendum.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis elementum nibh tellus molestie nunc. Rutrum quisque non tellus orci ac auctor augue mauris augue. Quisque sagittis purus sit amet volutpat. At in tellus integer feugiat scelerisque. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Tincidunt arcu non sodales neque sodales ut etiam. Auctor neque vitae tempus quam pellentesque. Lorem sed risus ultricies tristique nulla. Vulputate sapien nec sagittis aliquam malesuada bibendum.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis elementum nibh tellus molestie nunc. Rutrum quisque non tellus orci ac auctor augue mauris augue. Quisque sagittis purus sit amet volutpat. At in tellus integer feugiat scelerisque. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Tincidunt arcu non sodales neque sodales ut etiam. Auctor neque vitae tempus quam pellentesque. Lorem sed risus ultricies tristique nulla. Vulputate sapien nec sagittis aliquam malesuada bibendum.",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 8, 8),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        size: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return teams();
                          }));
                        },
                        child: Icon(
                          Icons.group,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return participate();
                          }));
                        },
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
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
                        "Team",
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
            ),
          ),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 4, 15, 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("images/logo.png")),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 8, 10),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black
                ),
                image: DecorationImage(
                    image: AssetImage("images/${widget.name}.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
         Container(
           child: Padding(
             padding: const EdgeInsets.fromLTRB(8.0,0,10,0),
             child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "About:- ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 2, 10, 20),
                child: Text(
                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lobortis elementum nibh tellus molestie nunc. Rutrum quisque non tellus orci ac auctor augue mauris augue. Quisque sagittis purus sit amet volutpat. At in tellus integer feugiat scelerisque. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Tincidunt arcu non sodales neque sodales ut etiam. Auctor neque vitae tempus quam pellentesque. Lorem sed risus ultricies tristique nulla. Vulputate sapien nec sagittis aliquam malesuada bibendum.",
                  style: TextStyle(),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: whitebutt(text: "Watch", image: " ", color: Colors.white),
              )
                ],
              ),
             ),
           ),
         )
        ],
      ),
    ));
  }
}
