import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
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
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              setState(() {
                Get.back();
                chewieController!.pause();
              });
            },
          ),
          title: const Text(
            "Video Player",
          ),
        ),
        body: SafeArea(
          child: SizedBox(
            height: 100.0.h,
            width: 100.0.h,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 45.0.h,
                      width: 100.0.w,
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
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 42.0.h,
                          width: 100.0.w,
                          color: Colors.grey,
                          child: Image.asset(
                            "assets/cinema.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 30.6.h),
                          child: Container(
                            height: 10.0.h,
                            width: 10.0.w,
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/gif.gif",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: 25.0.h,
                          width: 100.0.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(3.2.h),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            "assets/phone.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.6.h),
                          child: chewieController != null
                              ? videoPlayerController!.value.isInitialized
                                  ? Container(
                                      height: 23.6.h,
                                      width: 97.9.w,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(3.0.h)),
                                      clipBehavior: Clip.hardEdge,
                                      child: Chewie(
                                        controller: chewieController!,
                                      ),
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        CircularProgressIndicator(),
                                        SizedBox(height: 20),
                                        Text("Loading"),
                                      ],
                                    )
                              : Container(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
