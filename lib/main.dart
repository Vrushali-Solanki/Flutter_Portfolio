import 'package:Portfolio/about.dart';
import 'package:Portfolio/education.dart';
import 'package:Portfolio/home.dart';
import 'package:Portfolio/projects.dart';
import 'package:Portfolio/specializedin.dart';
import 'package:Portfolio/techskills.dart';
import 'package:Portfolio/workexp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
      'projects': (context) => MyProjects(),
      'techskills': (context) => MyTechSkills(),
      'specializedin': (context) => MySpecializedIn(),
      'education': (context) => MyEducation(),
      'workexp': (context) => MyWorkExp(),
    },
  ));
}
