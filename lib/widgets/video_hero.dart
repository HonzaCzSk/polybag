import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoHero extends StatefulWidget {
  final String title;

  const VideoHero({
    super.key,
    required this.title,
  });

  @override
  State<VideoHero> createState() => _VideoHeroState();
}

class _VideoHeroState extends State<VideoHero> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    final filename = _getFilename();
    _controller = VideoPlayerController.asset('assets/videos/$filename.mp4');
    try {
      await _controller!.initialize();
      _chewieController = ChewieController(
        videoPlayerController: _controller!,
        autoPlay: true,
        looping: true,
      );
    } catch (error) {
      print('Video init error for $filename: $error');
    }
    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  String _getFilename() {
    final lower = widget.title.toLowerCase();
    return lower.replaceAll('á', 'a')
      .replaceAll('č', 'c')
      .replaceAll('é', 'e')
      .replaceAll('í', 'i')
      .replaceAll('ě', 'e')
      .replaceAll('ů', 'u')
      .replaceAll('–', ' ')
      .trim();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.title,
      child: GestureDetector(
        onTap: _isInitialized && _controller!.value.isInitialized
          ? () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text(widget.title),
                    automaticallyImplyLeading: false,
                  ),
                  body: Chewie(controller: _chewieController!),
                ),
              ),
            )
          : null,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: _isInitialized && _controller != null && _controller!.value.isInitialized
            ? ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Chewie(controller: _chewieController!),
              )
              : const Icon(
                Icons.play_circle_outline,
                color: Colors.white,
                size: 50,
              ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _controller?.dispose();
    super.dispose();
  }
}
