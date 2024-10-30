import 'package:flutter/material.dart';

class AudioPlayerBar extends StatelessWidget {
  const AudioPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Theme.of(context).primaryColor,
              inactiveTrackColor: Colors.grey[300],
              thumbColor: Theme.of(context).primaryColor,
            ),
            child: Slider(
              value: 0.5,
              onChanged: (value) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2:30',
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                icon: const Icon(Icons.play_arrow, color: Colors.white),
                onPressed: () {},
              ),
              const Text(
                '4:15',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}