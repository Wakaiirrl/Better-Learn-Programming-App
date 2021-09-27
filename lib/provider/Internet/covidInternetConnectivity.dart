import 'dart:async';
import 'package:better_learn_programming/config/error-page.dart';
import 'package:better_learn_programming/screen/pages/covid19/covid-page.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class CovidInternetConnectivity extends StatefulWidget {
  const CovidInternetConnectivity({Key key}) : super(key: key);

  @override
  _CovidInternetConnectivityState createState() =>
      _CovidInternetConnectivityState();
}

class _CovidInternetConnectivityState extends State<CovidInternetConnectivity> {
  bool isConnected = false;
  StreamSubscription sub;

  @override
  void initState() {
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen(
      (event) {
        setState(
          () {
            isConnected = (event != ConnectivityResult.none);
          },
        );
      },
    );
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isConnected ? CovidPage() : ErrorPage();
  }
}
