import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTechSkills extends StatefulWidget {
  const MyTechSkills({super.key});

  @override
  State<MyTechSkills> createState() => _MyTechSkillsState();
}

class _MyTechSkillsState extends State<MyTechSkills> {
  mySpec(icon, tech) {
    return Container(
      width: 105,
      height: 105,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff262628),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Tech Skills'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Android'),
                      mySpec(Icons.web, 'Web Dev'),
                      mySpec(Icons.code, 'OOPS')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.java, 'Java'),
                      mySpec(FlutterDEVICON.kotlin_plain, 'Kotlin'),
                      mySpec(FontAwesomeIcons.python, 'Python'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FlutterDEVICON.django_plain, 'Django'),
                      mySpec(FlutterDEVICON.react_original, 'React JS'),
                      mySpec(FlutterDEVICON.javascript_plain, 'JS'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.database, 'SQL'),
                      mySpec(FontAwesomeIcons.database, 'Firebase'),
                      mySpec(FlutterDEVICON.html5_plain, 'HTML'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FlutterDEVICON.css3_plain, 'CSS'),
                      mySpec(FlutterDEVICON.github_original, 'Github'),
                      mySpec(FlutterDEVICON.bitbucket_original, 'Bitbucket')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mySpec(Icons.api_outlined, 'Postman'),
                      SizedBox(width: 16),
                      mySpec(FontAwesomeIcons.jira, 'Jira'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
