import 'package:flutter/material.dart';
import 'package:medme/screens/loginsignup.dart';

import 'package:medme/screens/screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introscreen extends StatefulWidget {
  const introscreen({super.key});

  @override
  State<introscreen> createState() => _introscreenState();
}

class _introscreenState extends State<introscreen> {
  bool onlastPage = false;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastPage = (index == 2);
            });
          },
          children: [ SecondScreen()],
        ),

        // Bottom Controllers------------------------------------------------

        Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //skip text---

                // const Text('Skip'),

                //Slider indicator----

                

                //next and done text----------

                GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return loginsignup();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,width: 2),
                              color: Colors.red,
                              
                              borderRadius: BorderRadius.circular(6)),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    
                
              ],
            )),
      ]),
    );
  }
}
