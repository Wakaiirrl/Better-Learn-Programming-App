//https://simplicable.com/new/light-colors
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<BoxShadow> softUiShadow = [
  BoxShadow(
    color: Colors.white,
    offset: Offset(-5, -5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
  BoxShadow(
    color: Color(0XFF748CAC).withOpacity(.6),
    offset: Offset(5, 5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
];

final url = 'https://disease.sh/v3/covid-19/countries/';
String getFormattedDate(int date, String format) =>
    DateFormat(format).format(DateTime.fromMillisecondsSinceEpoch(date * 1000));
