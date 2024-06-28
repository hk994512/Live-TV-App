import 'package:flutter/material.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key, required this.url});
  final String url;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: YoYoPlayer(
          url: widget.url,
          aspectRatio: 16 / 9,
          displayFullScreenAfterInit: true,
          videoStyle: const VideoStyle(
            allowScrubbing: true,
            playIcon: Icon(
              Icons.play_arrow_rounded,
              color: Colors.deepPurple,
            ),
            pauseIcon: Icon(
              Icons.pause,
              color: Colors.red,
            ),
          ),
          onPlayButtonTap: (isPlaying) {
            setState(() {
         
            });
          },
        ),
      ),
    );
  }
}
