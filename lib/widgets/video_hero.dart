import 'package:flutter/material.dart';

class VideoHero extends StatelessWidget {
  final String videoPath;
  final String heroTag;

  const VideoHero({
    super.key,
    required this.videoPath,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => VideoPlaceholderPage(
            videoPath: videoPath,
            title: heroTag,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.play_circle_outline, color: Colors.white70, size: 50),
      ),
    );
  }
}

class VideoPlaceholderPage extends StatelessWidget {
  final String videoPath;
  final String title;

  const VideoPlaceholderPage({
    super.key,
    required this.videoPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.video_camera_back, size: 100, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Video temporarily unavailable on desktop.\nUse mobile or web for playback.'),
            const SizedBox(height: 16),
            // ignore: unnecessary_brace_in_string_interps
            Text('Video: ${videoPath}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

