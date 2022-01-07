import 'package:flash_projector/controller/ads_controller.dart';
import 'package:flash_projector/dashboard/video_player_2.dart';
import 'package:flash_projector/video_projector/video_projector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final AdsController ads = Get.find();

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
                  children: [
                    ads.isBannerAdReady.value
                        ? SizedBox(
                            height: 35.0.h,
                            width: 100.0.w,
                            child: AdWidget(ad: ads.bannerAd3!),
                          )
                        : Container(
                            height: 35.0.h,
                            width: 100.0.w,
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/dashboard.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    InkWell(
                      onTap: () {
                        ads.interstitialAd3?.show();
                        Get.to(() => const VideoProject());
                      },
                      child: Container(
                        height: 10.0.h,
                        width: 80.0.w,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF2193b0),
                              Color(0xFF6dd5ed),
                              // Color(0xFFcc2b5e ),
                              Colors.red,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(
                            5.0.h,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5.0.h,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(1.0.h),
                                child: Icon(
                                  Icons.camera,
                                  size: 4.0.h,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Video Projector",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 6.0.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Text(
                                    "PROJECTOR SIMULATOR",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 3.0.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    InkWell(
                      onTap: () {
                        ads.interstitialAd4?.show();
                        Get.to(() => const VideoPlayerScreen2());
                      },
                      child: Container(
                        height: 10.0.h,
                        width: 80.0.w,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFcc2b5e),
                              Color(0xFF753a88),
                              Colors.red,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(
                            5.0.h,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5.0.h,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(1.0.h),
                                child: Icon(
                                  Icons.video_call_sharp,
                                  size: 4.0.h,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Video Player",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 6.0.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Text(
                                    "FEEL THE AMAZING PLAYER",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 3.0.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    ads.isBannerAdReady.value
                        ? SizedBox(
                            height: 35.0.h,
                            width: 100.0.w,
                            child: AdWidget(ad: ads.bannerAd4!),
                          )
                        : Container(
                            height: 35.0.h,
                            width: 100.0.w,
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/dashboard.jpg",
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
}
