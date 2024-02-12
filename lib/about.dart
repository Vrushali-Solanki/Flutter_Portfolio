import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  Future<void> _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  Future<void> _launchEmail(String email) async {
    final mailtoLink = Mailto(to: [email]);
    await launch('$mailtoLink');
  }

  Future<void> _launchWhatsApp(String phoneNumber) async {
    final link =
        WhatsAppUnilink(phoneNumber: phoneNumber, text: 'Hi, Vrushali');
    await launch('$link');
  }

  Future<void> _launchLinkedIn() async {
    final linkedInProfile = 'https://www.linkedin.com/in/vrushali-solanki/';
    final linkedInUrl = 'linkedin://profile/$linkedInProfile';

    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      // If the LinkedIn app is not installed, open the profile in the browser
      await launch(linkedInProfile);
    }
  }

  Future<void> _launchGithub() async {
    final githubProfile = 'https://github.com/Vrushali-Solanki/';
    final githubUrl = 'github://Vrushali-Solanki/';

    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      // If the GitHub app is not installed, open the profile in the browser
      await launch(githubProfile);
    }
  }

  Future<void> _launchInsta() async {
    final instagramProfile = 'https://www.instagram.com/vrushhhh.__/?next=%2F';
    final instagramUrl = 'https://www.instagram.com/vrushhhh.__/?next=%2F';

    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      // If the Instagram app is not installed, open the profile in the browser
      await launch(instagramProfile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 40),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img.png',
                    height: 400,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  Text(
                    'Vrushali Solanki',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Software Engineer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Contact Details:',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            _launchEmail('vrushali.solanki01@gmail.com');
                          },
                          icon: Icon(
                            Icons.mail_outline,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            _launchLinkedIn();
                          },
                          icon: Icon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            _launchGithub();
                          },
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
