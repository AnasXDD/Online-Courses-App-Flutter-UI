import 'package:flutter/material.dart';
import 'package:free_courses_ui/home.dart';
import 'package:free_courses_ui/instructor%20profile.dart';
import 'package:free_courses_ui/lessonsscreenpage.dart';
import 'package:free_courses_ui/mentor%20profile1.dart';
import 'package:free_courses_ui/homepage.dart';
import 'package:free_courses_ui/profilepage.dart';
import 'package:free_courses_ui/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
