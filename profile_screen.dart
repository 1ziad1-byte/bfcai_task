import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({
    super.key,
    required this.userName,
    required this.userSection,
  });

  final String userName;
  final String userSection;

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFFFAF9FB);
    const Color accentColor = Color(0xFFF44336);

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://t4.ftcdn.net/jpg/04/31/64/75/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Hi, I am $userName,',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              'Section: $userSection',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Flutter Developer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF4C4C4C),
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
