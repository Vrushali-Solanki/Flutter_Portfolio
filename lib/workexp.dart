import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWorkExp extends StatefulWidget {
  const MyWorkExp({super.key});

  @override
  State<MyWorkExp> createState() => _MyWorkExpState();
}

class _MyWorkExpState extends State<MyWorkExp> {

  Widget myPro(
      String role,
      String company,
      String date,
      String skills,{String? url, // Make the URL parameter optional
      }) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                role,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 15),
              Text(
                company,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                date,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                skills,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              if (url != null) // Display the button only if URL is provided
                SizedBox(height: 5),
              if (url != null) // Display the button only if URL is provided
                TextButton(
                  onPressed: () {
                    _downloadPDF(url);
                  },
                  child: Text(
                    'Download Certificate/LOR',
                    style: TextStyle(color: Color(0xFFFFAA1C), fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _downloadPDF(String pdfUrl) async {
    try {
      await launch(pdfUrl);
    } catch (e) {
      print('Error launching PDF: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Work Experience'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 15, bottom: 15),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro(
                'Android Developer',
                'Rentokil PCI',
                'Sept 2023 - Present',
                'Skills: Java, Kotlin, XML, SQL, Room, Firebase, API Integration, Retrofit, Volley, JWT Authorization, View Model, Data Binding, MVVM, MVC, App Update, Async Handler, Coroutines, Live Data, Multi Image Selection, RecyclerView.',
              ),
              myPro(
                'Android Developer Intern',
                'Bristlecone',
                'Jun 2022 - Sept 2022',
                'Skills: Kotlin, XML, Figma, API Integration, Retrofit, MVVM, View Model, Data Binding, Coroutines, Live Data, Filterable, RecyclerView.',
                url: 'https://drive.google.com/drive/folders/1-V6za7uCay9PlsNu__yNqqMTe_StH9-9?usp=sharing',
              ),
              myPro(
                'Android and Web Developer Intern',
                'Ayan Dutta',
                'Aug 2021 - Sept 2021',
                'Skills: Java, XML, Firebase, Camera, File Sharing, GPS, Python(Django), CMS Website, Ecommerce, CSS, HTML, JS, SQLite.',
                url: 'https://drive.google.com/drive/folders/1CfQPHXz6GFfU3jaZRRvpL1J8WCL2cuAg?usp=sharing',
              ),
              myPro(
                'Android Developer Intern',
                'Sparks Foundation',
                'Jun 2021 - Jul 2021',
                'Skills: Java, XML, Firebase, Different Social Media Login, Fetching User Data.',
                url: 'https://drive.google.com/file/d/153wTxt1jJEEQBZu-bmlyRzy2Ccw36nKU/view?usp=sharing',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

