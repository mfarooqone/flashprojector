import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'controller/ads_controller.dart';
import 'dashboard/dashboard.dart';

class StartApp extends StatefulWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  _StartAppState createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  var ads = Get.put(AdsController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Obx(() {
        return GestureDetector(
          onTap: () {
            ads.interstitialAd1?.show();
          },
          child: Scaffold(
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
                              height: 35.0.h,
                              width: 100.0.w,
                              child: AdWidget(ad: ads.bannerAd1!),
                            )
                          : Container(
                              height: 35.0.h,
                              width: 100.0.w,
                              color: Colors.grey,
                              child: Image.asset(
                                "assets/start_app.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      InkWell(
                        onTap: () {
                          ads.interstitialAd2?.show();

                          Get.to(() => Dashboard());
                        },
                        child: Container(
                          height: 10.0.h,
                          width: 80.0.w,
                          decoration: BoxDecoration(
                            // color: Colors.orange,
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.blue,
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
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 3.0.h),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8.0.w,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                              child: AdWidget(ad: ads.bannerAd2!),
                            )
                          : Container(
                              height: 35.0.h,
                              width: 100.0.w,
                              color: Colors.grey,
                              child: Image.asset(
                                "assets/start_app1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      });
    });
  }
}
