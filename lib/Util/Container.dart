import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  Widget child;
 final double? height;
  final double? width;
  final Color? color;
  final double? borderRadius;
  final double? blurRadius;
  final double? spreadRadius;
  final double? borderWidth;

  Cont({
     this.height,
     this.width,
    required this.child,
    this.blurRadius,
    this.spreadRadius,
    this.borderRadius,
    this.borderWidth,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container
      (
      
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        color: color??Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: Border.all(color: Colors.grey.shade100,width: 0.001),

        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: blurRadius ?? 0,
            spreadRadius: spreadRadius ?? 0,
            color: Colors.grey,

          ),
        ],
      ),
    );
  }
}
