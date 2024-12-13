import 'package:flutter/material.dart';
import '../../../../Util/Text.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    String me = "I'm Vipin karma, a mobile app developer";
    String about =
        '"Passionate Flutter developer with a knack for building delightful mobile experiences. Transforming ideas into reality through clean and expressive code"';
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;



    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
              height: height * 0.75,
              width: width * 0.80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/Background.jpg',
                    fit: BoxFit.fill,
                  ))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: width * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.30,
                      child: Center(
                        child: Texts(
                          data: "Hey,",
                          fontFamily: 'FS Ostro Display VF Regular',
                          color: Colors.purple,
                          size: 50,
                          maxline: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.90,
                      child: Center(
                        child: Texts(
                          data: me,
                          fontFamily: 'ArchivoBlack',
                          color: Colors.grey[350],
                          size: 46,
                          maxline: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.46,
                      child: Center(
                        child: Text(
                          about,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
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
      ),
    );
  }
}
