import 'package:flutter/material.dart';

class Functions{
  void scrollToProjectDesk(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
}}