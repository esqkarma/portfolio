import 'package:flutter/material.dart';
import 'package:web/Machines/Mobile/Screens/Contact/Contact_Mob.dart';
import 'package:web/Machines/Mobile/Screens/Skill/Skill_Mob.dart';
import 'MobHomeBody.dart';
import 'mobHomeTop.dart';

class MobHome extends StatelessWidget {
  const MobHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            MobHomeTop(),
            MobHomeBody(),
            SkillsMob(),
            Contact_Mob(),
          ],
        ),
      ),
    );
  }
}
