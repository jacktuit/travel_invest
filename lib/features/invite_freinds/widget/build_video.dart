import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BuildVideo extends StatefulWidget {
  const BuildVideo({super.key});

  @override
  State<BuildVideo> createState() => _BuildVideoState();
}

class _BuildVideoState extends State<BuildVideo> {
  static const _url =
      'https://www.shutterstock.com/shutterstock/videos/3830843847/preview/stock-footage-white-car-driving-along-picturesque-mountain-ridge-in-the-morning-through-green-meadows-crossing.webm';

  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(_url),
      viewType: VideoViewType.platformView,
    );

    _videoPlayerController!.initialize().then((_) {
      if (mounted) {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController!,
          autoPlay: false,
          looping: true,
          aspectRatio: _videoPlayerController!.value.aspectRatio,
        );

        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    _chewieController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoPlayerController?.value.isInitialized == true &&
            _chewieController != null
        ? Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
            child: AspectRatio(
              aspectRatio: _chewieController?.aspectRatio ?? 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Chewie(controller: _chewieController!),
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.videocam, size: 48, color: Colors.grey),
                      SizedBox(height: 12),
                      Text(
                        'Loading video...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
