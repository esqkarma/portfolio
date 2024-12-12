
import 'package:flutter/material.dart';

import '../../../../Util/Text.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 50,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.05,
            width: width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Texts(
                  data: "recents",
                  fontFamily: 'ArchivoBlack',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                      height: height * 0.25,
                      width: width * 0.20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/SunSet.jpg',
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      )),
                  Texts(
                    data: "CLIMA",
                    fontFamily: 'ArchivoBlack',
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.25,
                      width: width * 0.20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/Future City.jpg',
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      )),
                  Texts(
                    data: "TASKIO",
                    fontFamily: 'ArchivoBlack',
                  ),
                  // SizedBox(width: width * 0.20,child: Texts(data: description1,color: Colors.blueGrey[300],)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: height * 0.25,
                      width: width * 0.20,

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/astronaut.jpg',
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      )),
                  Texts(
                    data: "SHOPIT",
                    fontFamily: 'ArchivoBlack',
                  ),
                  // SizedBox(width: width * 0.20,child: Texts(data: description2,color: Colors.blueGrey[300],)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
