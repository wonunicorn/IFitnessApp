import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:graduation_project/constants.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool isLoop;

  VideoPlayer({@required this.videoPlayerController, this.isLoop});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  ChewieController chewieController;

  @override
  void initState() {
    chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      looping: widget.isLoop,
      aspectRatio: 16/9,
      autoInitialize: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: chewieController,

      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    chewieController.dispose();
  }
}

class VideoDisplay extends StatefulWidget {
  
  final String videoUrl;
  VideoDisplay({@required this.videoUrl});
  
  @override
  _VideoDisplayState createState() => _VideoDisplayState();
}

class _VideoDisplayState extends State<VideoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: VideoPlayer(
        isLoop: true,
          videoPlayerController: VideoPlayerController.asset(
              widget.videoUrl),

      ),
    );
  }
}

