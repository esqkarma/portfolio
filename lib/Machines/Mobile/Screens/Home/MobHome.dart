import 'package:flutter/material.dart';
import 'package:web/Machines/Mobile/Screens/Home/mobaboutMe.dart';
import 'package:web/Machines/Mobile/Screens/Home/mobHomeBottom.dart';
import 'MobHomeBody.dart';
import 'mobHomeTop.dart';

class MobHome extends StatelessWidget {
  const MobHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                MobHomeTop(),
                MobHomeBody(),
                MobHomeBottom(),
                MobAboutMe()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
