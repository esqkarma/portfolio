import 'package:flutter/material.dart';

import '../../../../Util/Container.dart';
import '../../../../Util/Text.dart';

class SkillBottomMob extends StatelessWidget {
  final int? n;

  SkillBottomMob(this.n,{super.key});

  @override
  Widget build(BuildContext context) {
    List<Icon> icon = [
      Icon(Icons.android_outlined),
      Icon(Icons.flutter_dash_outlined),
      Icon(Icons.code_off_outlined),
      Icon(Icons.code_off_outlined),
      Icon(Icons.account_tree_outlined)
    ];
    List<String> data=[
      "Android Development",
      "Flutter",
      "Dart",
      "Java",
      "Git"
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Cont(
      height: height*0.15,
      width: width*0.35,
      color: Colors.grey[100],
      borderRadius: 20,
      blurRadius: 1,
      spreadRadius: 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon[n??0],
          Texts(data: data[n??0],)

        ],
      ),);

  }
}
