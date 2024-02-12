import 'package:flutter/material.dart';

class MyEducation extends StatefulWidget {
  const MyEducation({super.key});

  @override
  State<MyEducation> createState() => _MyEducationState();
}

class _MyEducationState extends State<MyEducation> {
  Widget myPro(String lang, String title, String desc, String star) {
    return Card(
      color: Color(0xff262628),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lang,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              desc,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.grade_outlined,
                  color: Colors.white70,
                  size: 18,
                ),
                SizedBox(width: 4),
                Text(
                  star,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            )
          ],
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
        title: Text('Education'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 15, bottom: 15),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('Bachelor', 'Universal College of Engineering, Mumbai',
                  'Computer Engineering', '78%'),
              myPro(
                  'HSC',
                  'Nirmala Memorial Foundation College Of Commerce & Science, Mumbai',
                  'Science',
                  '66.67%'),
              myPro('ICSE', 'A. P. International School, Mumbai', 'Science',
                  '82.17%'),
            ],
          ),
        ),
      ),
    );
  }
}
