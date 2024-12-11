import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Util/Text.dart';

class MobHomeBody extends StatelessWidget {
  const MobHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    String me = "  I'm Vipin karma,";
    List<String> about = [
    "A Flutter developer based in Keralam,India.",
      "Passionate about creating minimalistic and user-friendly mobile applications.",
      "I have developed several projects in Flutter, showcasing my dedication to",
      "crafting intuitive digital experiences"
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [

        SizedBox(
            height:height*0.85,
            width: width,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                child: Image.asset(
                  'assets/Background.jpg',
                  fit: BoxFit.fill,
                ))),
        Positioned(
          top: 200,
          child: SizedBox(
            width: width * 0.90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Texts(
                    data: "Hey,",
                    fontFamily: 'ArchivoBlack',
                    color: Colors.purple,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: width * 0.98,
                  child: Center(
                    child: Texts(
                      data: me,
                      fontFamily: 'ArchivoBlack',
                      color: Colors.grey[350],
                      size: 30,
                      maxline: 1,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: width * 0.95,
                    child: Center(
                      child: Texts(
                        data: about[0],
                        maxline: 1,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width*0.88,
                  child: Texts(
                    data: about[1],
                    size: 25,maxline: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width*0.83,
                  child: Texts(
                    data: about[2],
                    size: 20,maxline: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: width*0.60,
                  child: Texts(
                    data: about[3],
                    size: 20,maxline: 2,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
