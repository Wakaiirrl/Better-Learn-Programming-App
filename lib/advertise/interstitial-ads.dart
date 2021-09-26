/* 
 
 <<------------ AdHelper file ----------->>

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

 <<------------ InterstitialAd program -------------->>

 @override
  void initState() {
    super.initState();
    _createInterstitialAd(); 
  }

 _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdFailedToLoad: (LoadAdError error) {
          print('Ad exited with error: $error');
        },
        onAdLoaded: (InterstitialAd ad) {
          setState(
            () {
              this.myInterstitial = ad;
            },
          );
        },
      ),
    );
  }

  _showInterstitialAd() {
    myInterstitial.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (InterstitialAd ad) {
        //Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => CovidDetails(),
        //   ),
        // ); 
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => CovidDetails(), // go to next page
        //   ),
        // );
        print('$ad onAdFailedToShowFullScreenContent: $error');
        ad.dispose();
      },
    );

    myInterstitial.show();
  }

  <<--------------- Inside widget tree -------------->>

  InkWell(
    onTap : (){
       _showInterstitialAd();
       Navigator.push(context, MaterialPageRoute( builder: (_) => CovidDetails()));
    }
  )


*/