import 'package:flutter/material.dart';
import 'package:voice_social_media/widgets/audio_player_bar.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://picsum.photos/400',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 40,
                    right: 16,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const Positioned(
                    bottom: 80,
                    right: 16,
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite_border, color: Colors.white),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(Icons.comment, color: Colors.white),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white),
                          onPressed: null,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AudioPlayerBar(),
          ),
        ],
      ),
    );
  }
}