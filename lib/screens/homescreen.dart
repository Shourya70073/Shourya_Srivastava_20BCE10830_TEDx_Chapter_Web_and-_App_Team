import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medme/screens/details.dart';
import 'package:medme/screens/participate.dart';
import 'package:medme/screens/teams.dart';
import 'package:medme/widget/whitebutton.dart';
import 'package:medme/widget/yellowbutton.dart';

class homescreen extends StatefulWidget {
  final result;
  // ignore: use_key_in_widget_constructors
  const homescreen({@required this.result});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        
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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 40,
                  ),
                  Container(
                    height: 70,
                    width: 80,
                    child: Image.asset("images/logo.png"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.result.photoUrl),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(2000),
                        color: Colors.red,
                        border: Border.all(width: 2, color: Colors.black)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 15, 0, 0),
              child: Container(
                child: Text(
                  "Past Events",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 215,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.black)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              child: Container(
                                height: 170,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/$index.jpeg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "${index * 10 + 1}" + " JAN 2023",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return details(name: index.toString());
                                  }));
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 2, color: Colors.black)),
                                    child: Center(
                                      child: Text(
                                        "Details",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 15, 0, 0),
              child: Text(
                "Speakers",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 0, 0),
              child: Container(
                height: 110,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: (Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/$index.jpeg"),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(400)),
                        )),
                      );
                    })),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0, 4),
              child: Container(
                child: Text(
                  "Upcoming Events",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8.0,15,8,0),
                child: Container(
                  height: 200,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black
                    ),
                      borderRadius: BorderRadius.circular(10), color: Colors.red),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(
                            width: 30,
                          ),
                          Text("02 NOV 2022, 17:00-19:00")
                        ],
                      ),
                      Text(
                        " Femtech and Gender Equality - Equal Opportunities In Work",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.gps_fixed),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Enterprise Lab, ICL South Kensington Campus",
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.info),
                          SizedBox(
                            width: 30,
                          ),
                          Text("A collaboration with Imperial Women in Business."),
                          
                        ],
                      ),
                      whitebutt(text: "Register", image: "", color: Colors.white)
                    ],
                  ),
                ),
              );
            }))
          ],
        ),
      )),
    );
  }
}
