import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySpecializedIn extends StatefulWidget {
  const MySpecializedIn({super.key});

  @override
  State<MySpecializedIn> createState() => _MySpecializedInState();
}

class _MySpecializedInState extends State<MySpecializedIn> {
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
        title: Text('Specialized In'),
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
                      mySpec(FlutterDEVICON.kotlin_plain, 'Kotlin'),
                      mySpec(FontAwesomeIcons.java, 'Java')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'MVVM'),
                      mySpec(Icons.android, 'MVC'),
                      mySpec(Icons.android, 'MVP'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.database, 'Room'),
                      mySpec(FontAwesomeIcons.database, 'SQL'),
                      mySpec(FontAwesomeIcons.database, 'Firebase'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Live Data'),
                      mySpec(Icons.android, 'Data Binding'),
                      mySpec(Icons.android, 'View Model')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'Volley'),
                      mySpec(Icons.android, 'Retrofit'),
                      mySpec(Icons.android, 'Coroutines')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(Icons.android, 'App Update'),
                      mySpec(Icons.android, 'Figma'),
                      mySpec(Icons.android, 'XML')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mySpec(Icons.android, 'Async'),
                      SizedBox(
                        width: 16,
                      ),
                      mySpec(Icons.android, 'Multi Image'),

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
