import 'package:flutter/material.dart';
import 'package:w_health/chatbot/chatBot.dart';
import 'package:w_health/chatbot/newUI.dart';
import 'package:w_health/screens/home/doctor_rating/doctorList.dart';
import 'package:w_health/services/login_service.dart';
import 'screens/home/blog/blog.dart';
import 'package:w_health/screens/home/maps/doctorMap.dart';
import 'package:w_health/screens/login/loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => FirebaseUserAuthentication().logout(),
              icon: Icon(Icons.logout)),
        ],
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AINewUI()),
                );
                print('Button Pressed!');
              },
              child: Text('Go to GEMINI'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                print('Button Pressed!');
              },
              child: Text('Go to Login Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapUIcustom()),
                );
                print('Button Pressed!');
              },
              child: Text('Go to Map Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlogScreen()),
                );
                print('Button Pressed!');
              },
              child: Text('Go to blog Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorScreen()),
                );
                print('Button Pressed!');
              },
              child: Text('Go to doctor Page'),
            ),
          ],
        ),
      ),
    );
  }
}
