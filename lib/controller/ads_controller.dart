// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_helper.dart';

const String testDevice = 'YOUR_DEVICE_ID';
const int maxFailedLoadAttempts = 3;

class AdsController extends GetxController {
  BannerAd? bannerAd1;
  BannerAd? bannerAd2;
  BannerAd? bannerAd3;
  BannerAd? bannerAd4;
  BannerAd? bannerAd5;
  BannerAd? bannerAd6;
  BannerAd? bannerAd7;
  BannerAd? bannerAd8;
  BannerAd? bannerAd9;
  BannerAd? bannerAd10;

  InterstitialAd? interstitialAd1;
  InterstitialAd? interstitialAd2;
  InterstitialAd? interstitialAd3;
  InterstitialAd? interstitialAd4;
  InterstitialAd? interstitialAd5;
  InterstitialAd? interstitialAd6;
  InterstitialAd? interstitialAd7;
  InterstitialAd? interstitialAd8;
  InterstitialAd? interstitialAd9;
  InterstitialAd? interstitialAd10;
  RxBool isBannerAdReady = false.obs;

  RxBool isInterstitialAdReady = false.obs;
  int _numInterstitialLoadAttempts = 0;

  @override
  void onInit() {
    initGoogleMobileAds();
    loadInterstitialAd1();
    loadInterstitialAd2();
    loadInterstitialAd3();
    loadInterstitialAd4();
    loadInterstitialAd5();
    loadInterstitialAd6();
    loadInterstitialAd7();
    loadInterstitialAd8();
    loadInterstitialAd9();
    loadInterstitialAd10();
    bannetAd1();
    bannetAd2();
    bannetAd3();
    bannetAd4();
    bannetAd5();
    bannetAd6();
    bannetAd7();
    bannetAd8();
    bannetAd9();
    bannetAd10();

    super.onInit();
  }

  Future<InitializationStatus> initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }

  void bannetAd1() {
    bannerAd1 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd1?.load();
  }

  void bannetAd2() {
    bannerAd2 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd2?.load();
  }

  void bannetAd3() {
    bannerAd3 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd3?.load();
  }

  void bannetAd4() {
    bannerAd4 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd4?.load();
  }

  void bannetAd5() {
    bannerAd5 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd5?.load();
  }

  void bannetAd6() {
    bannerAd6 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd6?.load();
  }

  void bannetAd7() {
    bannerAd7 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd7?.load();
  }

  void bannetAd8() {
    bannerAd8 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd8?.load();
  }

  void bannetAd9() {
    bannerAd9 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd9?.load();
  }

  void bannetAd10() {
    bannerAd10 = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.largeBanner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isBannerAdReady.value = true;
        },
        onAdFailedToLoad: (ad, err) {
          if (kDebugMode) {
            print('Failed to load a banner ad: ${err.message}');
          }
          isBannerAdReady.value = false;
          ad.dispose();
        },
      ),
    );

    bannerAd10?.load();
  }

  void loadInterstitialAd1() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd1 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd1!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd1 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd2() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd2 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd2!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd2 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd3() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd3 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd3!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd3 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd4() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd4 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd4!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd4 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd5() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd5 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd5!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd5 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd6() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd6 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd6!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd6 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd7() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd7 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd7!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd7 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd8() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd8 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd8!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd8 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd9() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd9 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd9!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd9 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  void loadInterstitialAd10() {
    InterstitialAd.load(
        adUnitId: AdHelper.interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            print('$ad loaded');
            interstitialAd10 = ad;
            _numInterstitialLoadAttempts = 0;
            interstitialAd10!.setImmersiveMode(true);
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error.');
            _numInterstitialLoadAttempts += 1;
            interstitialAd10 = null;
            if (_numInterstitialLoadAttempts <= maxFailedLoadAttempts) {
              loadInterstitialAd1();
            }
          },
        ));
  }

  @override
  void dispose() {
    super.dispose();
    bannerAd1?.dispose();
    bannerAd2?.dispose();
    bannerAd3?.dispose();
    bannerAd4?.dispose();
    bannerAd5?.dispose();
    bannerAd6?.dispose();
    bannerAd7?.dispose();
    bannerAd8?.dispose();
    bannerAd9?.dispose();
    bannerAd10?.dispose();
    interstitialAd1?.dispose();
    interstitialAd2?.dispose();
    interstitialAd3?.dispose();
    interstitialAd4?.dispose();
    interstitialAd5?.dispose();
    interstitialAd6?.dispose();
    interstitialAd7?.dispose();
    interstitialAd8?.dispose();
    interstitialAd9?.dispose();
    interstitialAd10?.dispose();
  }
}
