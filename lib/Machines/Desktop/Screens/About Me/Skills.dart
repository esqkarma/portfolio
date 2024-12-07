import 'package:flutter/material.dart';
import 'package:web/Util/Container.dart';

import '../../../../Util/Text.dart';
import 'SkillsBottom.dart';
class Skills extends StatelessWidget {

Skills({Key? key}) : super(key: key);

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
            height: height*0.70,
            width: width*0.60,
              color: Colors.white,
              borderRadius: 20,
              spreadRadius: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SkillBottom(0),
                      SkillBottom(1),
                      SkillBottom(2),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SkillBottom(3),
                      SkillBottom(4)
                    ],
                  )
                ],
              ))
        )
      ],
    );
  }
}
