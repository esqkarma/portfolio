// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Functions{
//   void scrollToProjectDesk(GlobalKey key) {
//     Scrollable.ensureVisible(key.currentContext!,
//       duration: Duration(seconds: 1),
//       curve: Curves.easeInOut,
//     );
// }
//
//
//  static Future<void> launchURL(String url) async {
//     final Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
// }