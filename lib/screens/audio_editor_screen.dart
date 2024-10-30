import 'package:flutter/material.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

class AudioEditorScreen extends StatefulWidget {
  const AudioEditorScreen({super.key});

  @override
  State<AudioEditorScreen> createState() => _AudioEditorScreenState();
}

class _AudioEditorScreenState extends State<AudioEditorScreen> {
  late final RecorderController recorderController;
  late final PlayerController playerController;

  @override
  void initState() {
    super.initState();
    recorderController = RecorderController();
    playerController = PlayerController();
  }

  @override
  void dispose() {
    recorderController.dispose();
    playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Editor'),
        actions: [
          TextButton(
            onPressed: () {
              // Save and publish
            },
            child: const Text('Publish'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: const Center(
                child: Text('Media Preview Area'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AudioWaveforms(
                  size: const Size(double.infinity, 50),
                  recorderController: recorderController,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.image),
                      onPressed: () {
                        // Add image
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.video_library),
                      onPressed: () {
                        // Add video
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic),
                      onPressed: () {
                        // Start/stop recording
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        // Edit audio
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}