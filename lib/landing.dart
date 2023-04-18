// Home screen that displays the logo and a button to start the session

import 'package:flutter/material.dart';

import 'homepage.dart';

class LandingPage extends StatelessWidget {
  static const _textStyle = TextStyle(fontFamily: 'Arial');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // The main content of the page
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: 1,
                    child: Text(
                      'Welcome to Session',
                      style: TextStyle(fontSize: 32, color: Colors.white, fontFamily: 'Arial'),
                    ),
                  ),
                  SizedBox(height: 16),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: 1,
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: HomePage(),
                            );
                          },
                        ),
                      ),
                      child: const Text(
                        'start',
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // The footer with the "Made with love in YYC" text
          Container(
            height: 90,
            alignment: Alignment.center,
            child: const Text(
              'Built in YYC by Jash Dubal',
              style: TextStyle(fontSize: 12, color: Colors.white24, fontFamily: 'Arial'),
            ),
          ),
        ],
      ),
    );
  }
}
