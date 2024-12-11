import 'package:flutter/material.dart';
import 'package:web/Machines/Mobile/Screens/Skill/Skill_Bottom_Mob.dart';
import 'package:web/Util/Container.dart';

import '../../../../Util/Text.dart';

class SkillsMob extends StatelessWidget {

  SkillsMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;




    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 80,child: Row(
          mainAxisAlignment:MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150,top: 50),
            )
          ],),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Texts(data: "Here are my",size: 17,),
                Texts(data: 'Skills',fontFamily: 'ArchivoBlack',size: 32,)
              ],
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Cont(
                height: height*0.50,
                width: width*0.90,
                color: Colors.white,
                borderRadius: 20,
                spreadRadius: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SkillBottomMob(0),
                          SkillBottomMob(1),


                        ],

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SkillBottomMob(2)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SkillBottomMob(3),
                          SkillBottomMob(4)
                        ],
                      ),
                    ),

                  ],
                ))
        ),
        SizedBox(height: 100,)
      ],
    );
  }
}
