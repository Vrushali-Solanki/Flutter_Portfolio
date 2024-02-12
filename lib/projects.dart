import 'package:Portfolio/ProjectDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

  Widget myPro(String lang, String title, String desc, String url) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProjectDetailsPage(
              lang: lang,
              title: title,
              desc: desc,
              url: url,
            ),
          ),
        );
      },
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
          color: Color(0xff262628),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10, top: 40),
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
                    fontSize: 23,
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
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        _openGithubRepo(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Future<void> _openGithubRepo(String githubUrl) async {
    try {
      await launch(githubUrl);
    } catch (e) {
      print('Error launching GitHub repository link: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 15, bottom: 15),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro(
                'JAVA',
                'ScholApp',
                'To help with your online scholarship',
                'https://github.com/Vrushali-Solanki/ScholApp',
              ),
              myPro(
                'REACT JS',
                'Spotify Clone',
                'The project is clone of Spotify',
                'https://github.com/Vrushali-Solanki/Spotify-Clone',
              ),
              myPro(
                  'REACT JS',
                  'FB Messenger Clone',
                  'The project is clone of FB Messenger',
                  'https://github.com/Vrushali-Solanki/facebook-messenger-clone'),
              myPro(
                  'Python',
                  'FoodDonationWebsite',
                  'A social media web for donating the food',
                  'https://github.com/Vrushali-Solanki/Food-Donation-Website'),
              myPro(
                  'JAVA',
                  'Social Media Login',
                  'An app with multi-platforms login',
                  'https://github.com/Vrushali-Solanki/TSF-Social-Media-Integration'),
              myPro(
                  'Python',
                  'Weather App',
                  'For weather updates across the world',
                  'https://github.com/Vrushali-Solanki/Weather-Application'),
              // Add other projects similarly
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyProjects(),
  ));
}
