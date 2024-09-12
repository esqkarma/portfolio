import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobileScreen;
  final Widget desktop;
  const Responsive(
      {super.key, required this.mobileScreen, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return mobileScreen;
      } else {
        return desktop;
      }
    });
  }
}
