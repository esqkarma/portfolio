import 'package:flutter/material.dart';
import '../../../../Util/Container.dart';
import '../../../../Util/Text.dart';
import 'Skills.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
     double htofCont = height * 0.70;
     double wtofCont = width * 0.70;



    String about =
        "I'm a Cyber enthusiast based in the beautiful state of Kerala. As a programming enthusiast, I embark on the exciting journey of creating mobile applications with Flutter. Eager to explore the vast realm of software development, I am driven by curiosity and a passion for crafting innovative solutions. Inspired by the vibrant tech community, I aim to contribute to the ever-evolving world of programming. Excited about the endless possibilities in Flutter, I am on a quest to enhance my skills and create impactful applications. Let's code and create together! 🚀📱";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50,),
        Texts(
          data: "Know more",
          size: 17,
        ),
        Texts(
          data: "About Me",
          fontFamily: 'ArchivoBlack',
          size: 32,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: htofCont,
                      width: wtofCont,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Cont(
                              height: htofCont*0.80,
                                width: wtofCont*0.40,
                                color: Colors.white,
                                borderRadius: 20,
                                borderWidth: 0.2,
                                blurRadius: 1,
                                child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('assets/profile.jpg',fit: BoxFit.fill,))),
                          ),
                          Container(
                            height: height*0.60,
                            // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Cont(
                                    height: htofCont*0.20,
                                    width: wtofCont*0.35,
                                    color: Colors.white,
                                    borderRadius: 20,
                                    borderWidth: 0.2,
                                    blurRadius: 1,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Texts(data: "Education",fontFamily: 'ArchivoBlack',size: 26,),
                                        Texts(data: "Bachelor's of computer application",size: 18,)
                                      ],
                                    )),
                                Container(
                                    height: htofCont*0.450,
                                    width: wtofCont*0.45,
                                    color: Colors.white,

                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(about,maxLines: 10,textAlign: TextAlign.start,textDirection: TextDirection.ltr,style: TextStyle(fontSize: 15),),
                                    )),
                                ElevatedButton(onPressed: (){
                                 // downloadFile("https://drive.google.com/file/d/1qVdUzy-yn0nUv12aMPe4yqGdBl9Iigma/view?usp=sharing");
                                }, child: Row(children: [
                                  Texts(data: "resume",),
                                  Icon(Icons.download)
                                ],))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 30,)
      ],
    );

  }
  // void downloadFile(String url) {
  //   html.AnchorElement anchorElement =  new html.AnchorElement(href: url);
  //   anchorElement.download = url;
  //   anchorElement.click();
  // }
}
