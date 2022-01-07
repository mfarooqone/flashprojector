import 'package:flash_projector/controller/ads_controller.dart';
import 'package:flash_projector/projector_guide/projector_guide.dart';
import 'package:flash_projector/setting/setting.dart';
import 'package:flash_projector/theme/theme.dart';
import 'package:flash_projector/video_projector/video_player_screen/video_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

class VideoProject extends StatefulWidget {
  const VideoProject({Key? key}) : super(key: key);

  @override
  _VideoProjectState createState() => _VideoProjectState();
}

class _VideoProjectState extends State<VideoProject> {
  AdsController ads = Get.find();
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Obx(() {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          body: SafeArea(
            child: SizedBox(
              height: 100.0.h,
              width: 100.0.h,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ads.isBannerAdReady.value
                        ? SizedBox(
                            height: 15.0.h,
                            width: 100.0.w,
                            child: AdWidget(ad: ads.bannerAd5!),
                          )
                        : Container(
                            height: 35.0.h,
                            width: 100.0.w,
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/video_project.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            ads.interstitialAd5?.show();
                            Get.to(() => const ThemeScreen());
                          },
                          child: containerList(
                            Icons.theater_comedy,
                            "Theme",
                            Colors.orange,
                            const Color(0xFFcc2b5e),
                            const Color(0xFFf45c43),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ads.interstitialAd6?.show();
                            Get.to(() => const VideoPlayerScreen());
                          },
                          child: containerList(
                            Icons.theaters,
                            "Select Video",
                            Colors.pink,
                            const Color(0xFFdd5e89),
                            const Color(0xFFf7bb97),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.0.h,
                    ),
                    ads.isBannerAdReady.value
                        ? SizedBox(
                            height: 15.0.h,
                            width: 100.0.w,
                            child: AdWidget(ad: ads.bannerAd6!),
                          )
                        : SizedBox(
                            height: 1.0.h,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            ads.interstitialAd7?.show();

                            Get.to(() => const ProjectorGuide());
                          },
                          child: containerList(
                            Icons.video_camera_back,
                            "Projector Guide",
                            Colors.blue,
                            const Color(0xFF000428),
                            const Color(0xFF004e92),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ads.interstitialAd8?.show();
                            Get.to(() => const Setting());
                          },
                          child: containerList(
                            Icons.settings,
                            "Settings",
                            Colors.green,
                            const Color(0xFF7b4397),
                            const Color(0xFFdc2430),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    ads.isBannerAdReady.value
                        ? SizedBox(
                            height: 15.0.h,
                            width: 100.0.w,
                            child: AdWidget(ad: ads.bannerAd7!),
                          )
                        : Container(
                            height: 35.0.h,
                            width: 100.0.w,
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/video_project.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
    });
  }

  Container containerList(IconData icon, String text, MaterialColor color,
      Color color1, Color color2) {
    return Container(
      width: 45.0.w,
      height: 12.0.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [color1, color2],
        ),
        borderRadius: BorderRadius.circular(
          1.0.h,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 6.0.h,
            color: Colors.white,
          ),
          SizedBox(
            height: 1.0.h,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 4.0.w,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
