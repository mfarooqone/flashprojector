import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6078952245362562/4836622650';
    } else if (Platform.isIOS) {
      return '';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-6078952245362562/7313121492";
    } else if (Platform.isIOS) {
      return "";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/5224354917";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/1712485313";
  //   } else {
  //     throw UnsupportedError("Unsupported platform");
  //   }
  // }

  // static String get nativeAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/5224354917";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/1712485313";
  //   } else {
  //     throw UnsupportedError("Unsupported platform");
  //   }
  // }
}
