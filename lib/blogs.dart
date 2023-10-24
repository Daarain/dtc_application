import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




import 'AppColors.dart';
class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.background2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Our Blogs',
                        style: TextStyle(
                          color: AppColors.headingtext2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arvo', 
                        ),
                      ),
                      Container(
                        width: 60, // Set the width to your desired value
                        height: 2, // Set the height of the underline
                        decoration: BoxDecoration(
                          color: AppColors.headingtext2, // Color of the underline
                          borderRadius: BorderRadius.circular(2), // Optional: Add rounded corners to the underline
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCard(
                    screenSize,
                    'THE COMPLETE GUIDE TO JAVA',
                    'Anas Khan',
                    'https://dtc.hashnode.dev/the-complete-guide-to-java-2023',
                   'assets/images/Java.png',
                    250,
                    220,
                  ),
                  _buildCard(
                    screenSize,
                    'OPEN SOURCE IS OVERRATED',
                    'Anas Khan',
                    'https://dtc.hashnode.dev/open-source-is-overrated',
                   'assets/images/opensource.png',
                    250,
                    220,
                  ),
                  _buildCard(
                    screenSize,
                    'AWESOME TOOLS FOR DEVELOPERS',
                    'Anas Khan',
                    'https://dtc.hashnode.dev/awesome-online-tools-for-self-improving-as-a-developersoftware-engineer',
                    'assets/images/tools.png',
                    250,
                    200,
                  ),
                  _buildCard(
                    screenSize,
                    'WEB DEVELOPMENT ROADMAP',
                    'Anas Khan',
                    'https://dtc.hashnode.dev/the-complete-guide-to-java-2023',
                    'assets/images/web dev.png',
                    250,
                    220,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(Size screenSize, String title, String content, String url, String imagePath, double imageWidth, double imageHeight) {
  return GestureDetector(
    onTap: () {
      _launchURL(url);
    },
    child: Card(
      elevation: 4,
      margin: EdgeInsets.all(20),
      child: Container(
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.5,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: Image.asset(
                imagePath,  // Use the provided image path
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.uppertext,
                fontFamily: 'Arvo',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(fontSize: 16, color: AppColors.lowertext),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}





  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}