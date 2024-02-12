import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsPage extends StatelessWidget {
  final String lang;
  final String title;
  final String desc;
  final String url;

  ProjectDetailsPage({
    required this.lang,
    required this.title,
    required this.desc,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
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
            SizedBox(height: 10),
            Text(
              desc,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _openGithubRepo(url);
              },
              child: Text('Open GitHub Repo'),
            ),
          ],
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
}
