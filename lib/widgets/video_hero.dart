import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

/// Ikonka s tlačítkem play. Po kliknutí otevře fullscreen video player.
/// [videoFile] = název souboru BEZ přípony, např. 'bird_dog'
/// [title]     = zobrazovaný název v AppBaru videa
class VideoHero extends StatelessWidget {
  final String videoFile;
  final String title;

  const VideoHero({
    super.key,
    required this.videoFile,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'video_$videoFile',
      child: GestureDetector(
        onTap: () => Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (_) => _VideoPlayerScreen(
              title: title,
              videoFile: videoFile,
            ),
          ),
        ),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade700,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.play_circle_outline_rounded,
            color: Colors.white,
            size: 52,
          ),
        ),
      ),
    );
  }
}

class _VideoPlayerScreen extends StatefulWidget {
  final String title;
  final String videoFile;

  const _VideoPlayerScreen({
    required this.title,
    required this.videoFile,
  });

  @override
  State<_VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<_VideoPlayerScreen> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;
  bool _isInitialized = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    try {
      final VideoPlayerController controller;
      final path = 'assets/assets/videos/${widget.videoFile}.mp4';

      if (kIsWeb) {
        // Na webu (PWA) asset() nefunguje – assety jsou servovány jako HTTP soubory
        controller = VideoPlayerController.networkUrl(Uri.base.resolve(path));
      } else {
        controller = VideoPlayerController.asset(path);
      }

      _controller = controller;
      await _controller!.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _controller!,
        autoPlay: true,
        looping: false,
        allowFullScreen: true,
        showControls: true,
      );

      if (mounted) setState(() => _isInitialized = true);
    } catch (e) {
      if (mounted) setState(() => _error = e.toString());
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      automaticallyImplyLeading: false,
      leading: BackButton(onPressed: () => Navigator.of(context).pop())),
      body: Center(
        child: _error != null
            ? _buildError()
            : !_isInitialized
                ? const CircularProgressIndicator()
                : Hero(
                    tag: 'video_${widget.videoFile}',
                    child: Chewie(controller: _chewieController!),
                  ),
      ),
    );
  }

  Widget _buildError() {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            'Video se nepodařilo načíst',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'assets/videos/${widget.videoFile}.mp4',
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            _error!,
            style: const TextStyle(color: Colors.grey, fontSize: 11),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
