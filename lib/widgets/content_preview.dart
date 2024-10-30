import 'package:flutter/material.dart';
import 'package:voice_social_media/screens/post_detail_screen.dart';

class ContentPreview extends StatelessWidget {
  const ContentPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PostDetailScreen(),
          ),
        );
      },
      onLongPress: () {
        // Show preview
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://picsum.photos/200',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Icon(
                Icons.multitrack_audio,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}