import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

// class Texts extends StatelessWidget {
//   final String? data;
//   final double? size;
//   final FontWeight? fontweight;
//   final FontStyle? fontstyle;
//   final Color? color;
//   final String? fontFamily;
//
//   Texts(
//       {this.color,
//       this.fontstyle,
//       this.data,
//       this.size,
//       this.fontweight,
//       super.key,
//       this.fontFamily});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       data ?? " ",
//       maxLines: 5,
//       overflow: TextOverflow.visible,
//       style: TextStyle(
//           fontWeight: fontweight,
//           fontSize: size,
//           fontStyle: fontstyle,
//           fontFamily: fontFamily,
//           color: color),
//     );
//   }
// }

class Texts extends StatelessWidget {
  final String? data;
  final double? size;
  final FontWeight? fontweight;
  final FontStyle? fontstyle;
  final Color? color;
  final String? fontFamily;
  final int? maxline;
  Texts(
      {this.color,
        this.fontstyle,
        this.data,
        this.size,
        this.fontweight,
        super.key,
        this.fontFamily,this.maxline});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(data ?? " ",
      maxFontSize:60,
      minFontSize: 10,
      maxLines: maxline??3,
      overflow: TextOverflow.ellipsis,
      textAlign:TextAlign.center,
      style: TextStyle(
          fontWeight: fontweight,
          fontSize: size,
          fontStyle: fontstyle,
          fontFamily: fontFamily,

          color: color),);
  }
}
