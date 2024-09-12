import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Util/Text.dart';

class MobHomeBody extends StatelessWidget {
  const MobHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    String me = "I'm Vipin karma, a mobile app developer";
    String about =
        '"Passionate Flutter developer with a knack for building delightful mobile experiences."';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
            height: height * 0.40,
            width: width * 0.97,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/Background.jpg',
                  fit: BoxFit.fill,
                ))),
        Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: width * 0.90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      width: width * 0.30,
                      child: Center(
                        child: Texts(
                          data: "Hey,",
                          fontFamily: 'ArchivoBlack',
                          color: Colors.purple,
                          size: 26,
                          maxline: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.98,
                    child: Center(
                      child: Texts(
                        data: me,
                        fontFamily: 'ArchivoBlack',
                        color: Colors.grey[350],
                        maxline: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.70,
                    child: Center(
                      child: Text(
                        about,
                        maxLines: 6,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "ArchivoBlack",
                          color: Colors.blueGrey[200],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
