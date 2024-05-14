// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future<void> openWhatsApp(String phone) async {
  RegExp regex = RegExp(r'\d+');
  Iterable<Match> matches = regex.allMatches(phone);
  List<String> numbers = matches.map((match) => match.group(0)!).toList();

  String phoneNumber = numbers.join(); // Concatenar os números encontrados

  String url = 'https://wa.me/55$phoneNumber';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
