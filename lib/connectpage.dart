import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'AppColors.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Join Us Here',
                        style: TextStyle(
                          color: AppColors.headingtext4,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Arvo', 
                        ),
                      ),
                      Container(
                        width: 50, // Set the width to your desired value
                        height: 1, // Set the height of the underline
                        decoration: BoxDecoration(
                          color: AppColors.headingtext4, // Color of the underline
                          borderRadius: BorderRadius.circular(1), 
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
                    'WHATSAPP GROUP',
                    'Join in the WhatsApp community and connect with like minded people across the country.',
                    'https://chat.whatsapp.com/GkcMix1PywyKvlLZD8r4tN',
                    'assets/images/Whatsapp.png',
                    60,
                    60,
                  ),
                  _buildCard(
                    screenSize,
                    'TELEGRAM GROUP',
                    'Do not forget to follow us on telegram to stay updated about all the upcoming programs, openings and internships.',
                    'https://t.me/diplomatechcommunity',
                    'assets/images/Telegram.png',
                    60,
                    60,
                  ),
                  _buildCard(
                    screenSize,
                    'LIKNEDIN PAGE',
                    'Follow the official page of Diploma Tech Community where we regularly post about all the upcoming workshops and events.',
                    'https://www.linkedin.com/company/diploma-tech-community/',
                    'assets/images/LIKNEDIN.png',
                    60,
                    60,
                  ),
                  _buildCard(
                    screenSize,
                    'OPEN SOURCE PROJECT',
                    'This is the GitHub repository of Diploma Tech Community Website built using HTML, CSS and JavaScript and is Open Source.',
                    'https://github.com/DiplomaTechCommunity',
                    'assets/images/Github.png',
                    60,
                    60,
                  ),
                  _buildCard(
                    screenSize, 
                    'TWITTER', 
                    'Follow the official Twitter Page of the Diploma Tech Community and stay updated.', 
                    'https://twitter.com/WeAreDTC',
                    'assets/images/TWITTER.png',
                    60,
                    60,
                  ),
                  _buildCard(
                    screenSize, 
                    'YOUTUBE CONTENT', 
                    'Subscribe to the Youtube channel to not miss any upcoming webinar, tech events and workshops.', 
                    'https://www.youtube.com/channel/UCqz0TblqJT01dmHYw3kkNfA/featured',
                    'assets/images/YOUTUBE.png',
                    60,
                    60,
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
        height: screenSize.height * 0.38,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: imageWidth + 6, // Add 6 to account for the border width
                  height: imageHeight + 6, // Add 6 to account for the border width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 230, 230, 230), // White border color
                      width: 2, // Border width
                    ),
                  ),
                ),
                Container(
                  width: imageWidth,
                  height: imageHeight,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath), // Use the provided image path
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.uppertext,
                fontFamily: 'Arvo',
                fontWeight: FontWeight.bold,
              ),
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
