// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class teams extends StatefulWidget {
  const teams({super.key});

  @override
  State<teams> createState() => _teamsState();
}

class _teamsState extends State<teams> {
  @override
  Widget build(BuildContext context) {
    List<List<String>> pos = [
      [
        "President",
        "Secretary",
      ],
      [
        "Advisor",
        "Events Officer",
      ],
      [
        "Events Officer",
        "Speaker Coordinator",
      ],
      [
        "Speaker Coordinator",
        "Media Director",
      ]
    ];
    List<List<String>> image = [
      [
        "0",
        "1",
      ],
      [
        "2",
        "3",
      ],
      [
        "4",
        "5",
      ],
      [
        "6",
        "7",
      ],
    ];
    List<List<String>> name = [
      ["Sundar Pichai", "Satya Nadella"],
      ["George bell", "Harry Styles"],
      ["Krim lorm", "Brimk Jaison"],
      ["Virat Kohli", "Dinesh Singh"],
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
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
            Text(
              "Meet the committee",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 3,
            ),
            Text("Get to know the people who who make TEDx events happen!"),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(25,8,0,0),
                        child: (Row(
                          children: [
                            Container(
                              height: 210,
                              width: 180,
                              // ignore: sort_child_properties_last
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "images/${image[index][0]}.jpeg"),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(400)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    name[index][0],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    pos[index][0],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[900]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 30,
                                    child: Image.asset("images/linkedin.png"),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 210,
                              width: 180,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "images/${image[index][1]}.jpeg"),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(400)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    name[index][1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    pos[index][1],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[900]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 30,
                                    child: Image.asset("images/linkedin.png"),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                            )
                          ],
                        )),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
