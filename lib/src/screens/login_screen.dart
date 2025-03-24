import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              'Nova Fit',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 8,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(10, 12),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 600),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/one');
                },
                icon: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(10, 6),
                    ),
                  ],
                ),
                iconSize: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
