import 'package:flutter/material.dart';
import 'package:voice_social_media/screens/profile_screen.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/200'),
          radius: 16,
        ),
      ),
    );
  }
}