/*


   <<--------------- Main file ----------->>

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); 
  MobileAds.instance.initialize();
  runApp(MyApp());
}
   <<--------------- AdHelper file ----------->>

import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-4066984467805494/1906680983';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-4066984467805494/1906680983';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-4066984467805494/1921276828";
    } else if (Platform.isIOS) {
      return "ca-app-pub-4066984467805494/1921276828";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}

  <<------------- BannerAd program -------------->>

  BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }

  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  _createBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(
            () {
              _isBannerAdReady = true;
            },
          );
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }
  


  <<----------------- Inside widget tree -------------->>

   /* _isBannerAdReady
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: _bannerAd.size.width.toDouble(),
                          height: _bannerAd.size.height.toDouble(),
                          child: AdWidget(ad: _bannerAd),
                        ),
                      )
                    : SizedBox(
                        height: height * 0.07,
                      ),
    */
*/
