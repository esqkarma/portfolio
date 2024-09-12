import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/Machines/Desktop/Screens/Project/ProjectBody_Desk.dart';
import 'package:web/Machines/Desktop/Screens/Project/ProjectTop.dart';
// ignore: unused_import
import 'package:web/Util/Keys.dart';


class ProjectDesk extends StatelessWidget {
  ProjectDesk({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return
      Column(
        children: [ SizedBox(height: 80,), ProjectTop_Desk(),ProjectBody()],);
  }
}
