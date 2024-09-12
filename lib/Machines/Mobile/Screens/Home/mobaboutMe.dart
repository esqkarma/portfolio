import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../Util/Text.dart';
import 'package:url_launcher/link.dart';

class MobAboutMe extends StatelessWidget {
  const MobAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String about =
        "Hello! I'm a Cyber enthusiast based in the beautiful state of Kerala. As a programming enthusiast, I embark on the exciting journey of creating mobile applications with Flutter. Eager to explore the vast realm of software development, I am driven by curiosity and a passion for crafting innovative solutions. Inspired by the vibrant tech community, I aim to contribute to the ever-evolving world of programming. Excited about the endless possibilities in Flutter, I am on a quest to enhance my skills and create impactful applications. Let's code and create together! 🚀📱";

    String url = "https://github.com/esqkarma";
    final Uri uri = Uri.parse(url);

    ///Function for returning URL to Uri;
    Uri? uriFn(String url) {
      try {
        if (url.isNotEmpty) {
          final Uri uri = Uri.parse(url);
          return uri;
        } else {
          throw Exception('URL is empty');
        }
      } catch (err) {
        print(err);
        return null; // or return a default Uri
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Row(
                        children: [
                          Texts(
                            data: "About Me",
                            fontFamily: 'ArchivoBlack',
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 40),
                      child: Texts(
                        data: about,
                        size: 20,
                        maxline: 10,
                      ),
                    ),
                    Container(
                      height: height * 0.08,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          color: const Color.fromARGB(255, 35, 33, 33)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Link(
                              uri: uriFn(
                                  "https://linkedin.com/in/vipin-karma-s"),
                              builder: (context, FollowLink) {
                                return GestureDetector(
                                  onTap: FollowLink,
                                  child: Image.asset(
                                    "assets/linkedin_outline.png",
                                    scale: 1.6,
                                  ),
                                );
                              }),
                          //https://in.linkedin.com/in/vipin-karma-s-b6b876282
                          //https://www.instagram.com/esq.karma/

                          Link(
                              uri: uriFn("https://github.com/esqkarma"),
                              builder: (context, FollowLink) {
                                return GestureDetector(
                                    onTap: FollowLink,
                                    child: Image.asset(
                                      "assets/github.png",
                                      scale: 1.6,
                                    ));
                              }),
                          Link(
                              uri:
                                  uriFn("https://www.instagram.com/esq.karma/"),
                              builder: (context, FollowLink) {
                                return GestureDetector(
                                    onTap: FollowLink,
                                    child: Image.asset(
                                      "assets/insta.png",
                                      scale: 1.6,
                                    ));
                              }),
                          Link(
                              uri:
                                  uriFn("https://www.instagram.com/esq.karma/"),
                              builder: (context, FollowLink) {
                                return GestureDetector(
                                    onTap: FollowLink,
                                    child: Image.asset(
                                      "assets/twitter.png",
                                      scale: 1.6,
                                    ));
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
