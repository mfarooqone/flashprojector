import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen2 extends StatefulWidget {
  const VideoPlayerScreen2({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreen2State createState() => _VideoPlayerScreen2State();
}

class _VideoPlayerScreen2State extends State<VideoPlayerScreen2> {
  late File _video;

  final ImagePicker _imagePicker = ImagePicker();
  _pickVideo() async {
    var video = await _imagePicker.pickVideo(source: ImageSource.gallery);
    setState(() {
      _video = File(video!.path);
      _initializeVideoPlayer();
    });
  }

  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  @override
  void initState() {
    super.initState();
    _pickVideo();
  }

  _changeScreen() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  Future<void> _initializeVideoPlayer() async {
    videoPlayerController = VideoPlayerController?.file(_video);
    await Future.wait([videoPlayerController!.initialize()]);
    setState(() {
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: true,
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _changeScreen();
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
            ),
            child: chewieController != null
                ? videoPlayerController!.value.isInitialized
                    ? Chewie(
                        controller: chewieController!,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text(
                            "Loading...",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                : Container()),
      );
    });
  }
}
