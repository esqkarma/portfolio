import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/Util/Functions.dart';
import '../../../../Util/Container.dart';
import '../../../../Util/Text.dart';
import 'package:url_launcher/link.dart';

class Contact_Mob extends StatelessWidget {
  Contact_Mob({Key? key,}) : super(key: key);
  Functions functions = Functions();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double htofCont = height*0.70;
    double wtofCont = width*0.60;










    // ///Function for returning URL to Uri;
    // Uri? uriFn(String url) {
    //   try {
    //     if (url.isNotEmpty) {
    //       final Uri uri = Uri.parse(url);
    //       return uri;
    //     } else {
    //       throw Exception('URL is empty');
    //     }
    //   } catch (err) {
    //     print(err);
    //     return null; // or return a default Uri
    //   }
    // }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //Head Section######################################################
        Texts(data: "Get in touch",size: 17,),
        Texts(data: "Contact Me",fontFamily: 'ArchivoBlack',size: 32,),
        //Mail Section######################################################
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [



            //Bottom Section #################################################################################
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [

                    Cont(
                      height: height * 0.08,
                      width: width,
                      borderRadius: 20,
                      color: Colors.blueGrey[50],
                      child: Stack(
                        children: [
                          SizedBox(
                              height: height*0.08,
                              width:width,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("assets/cosmos wallpaper universe.jpg",fit: BoxFit.cover,))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Image.asset( "assets/icons8-linkedin-50.png",
                                  scale: 1.6,),
                                onTap:() async {
                                  await Functions.launchURL("https://linkedin.com/in/vipin-karma-s");
                                },
                              ),

                              InkWell(
                                child: Image.asset( "assets/icons8-github-48.png",
                                  scale: 1.6,),
                                onTap:() async {
                                  await Functions.launchURL("https://github.com/esqkarma");
                                },
                              ),

                              InkWell(
                                child: Image.asset( "assets/icons8-instagram-50.png",
                                  scale: 1.6,),
                                onTap:() async {
                                  await Functions.launchURL("https://www.instagram.com/esq.karma/");
                                },
                              ),








                              // Link(
                              //     uri: uriFn(
                              //         "https://linkedin.com/in/vipin-karma-s"),
                              //     builder: (context, FollowLink) {
                              //       return GestureDetector(
                              //         onTap: FollowLink,
                              //         child: Image.asset(
                              //           "assets/icons8-linkedin-50.png",
                              //           scale: 1.6,
                              //         ),
                              //       );
                              //     }),
                              //https://in.linkedin.com/in/vipin-karma-s-b6b876282
                              //https://www.instagram.com/esq.karma/

                              // Link(
                              //     uri: uriFn("https://github.com/esqkarma"),
                              //     builder: (context, FollowLink) {
                              //       return GestureDetector(
                              //           onTap: FollowLink,
                              //           child: Image.asset(
                              //             "assets/icons8-github-48.png",
                              //             scale: 1.6,
                              //           ));
                              //     }),
                              // Link(
                              //     uri:
                              //     uriFn("https://www.instagram.com/esq.karma/"),
                              //     builder: (context, FollowLink) {
                              //       return GestureDetector(
                              //           onTap: FollowLink,
                              //           child: Image.asset(
                              //             "assets/icons8-instagram-50.png",
                              //             scale: 1.6,
                              //           ));
                              //     }),

                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),



          ],
        ),




        Padding(
          padding: const EdgeInsets.only(right: 50,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            ],
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}


