import 'package:flutter/material.dart';
import 'package:medme/screens/details.dart';
import 'package:medme/screens/homescreen.dart';
import 'package:medme/screens/introscreen.dart';
import 'package:medme/screens/loginsignup.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:medme/screens/participate.dart';

import 'package:medme/screens/teams.dart';

import 'firebase_options.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Med Me",
      home:introscreen(),
    );
  }
}
