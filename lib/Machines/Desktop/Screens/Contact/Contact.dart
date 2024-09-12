import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/Util/Functions.dart';
import '../../../../Util/Container.dart';
import '../../../../Util/Text.dart';
import 'package:url_launcher/link.dart';

class Contact extends StatelessWidget {
  GlobalKey homeKey ;
   Contact({Key? key, required this.homeKey}) : super(key: key);
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        //Head Section######################################################
        SizedBox(height: 50,),
        Texts(data: "Get in touch",size: 17,),
        Texts(data: "Contact Me",fontFamily: 'ArchivoBlack',size: 32,),
        SizedBox(height: 30,),
        //Mail Section######################################################
        Container(
          height: htofCont,
          width: wtofCont,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Cont(
              //   height: htofCont*0.50,
              //     width: wtofCont*0.50,
              //     color: Colors.grey[100],
              //     blurRadius: 0.1,
              //     borderRadius: 20,
              //     borderWidth: 0.1,
              //     child: Expanded(
              //         flex:1,child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: TextField(
              //             cursorWidth: 1.5,
              //             cursorHeight: 20,
              //             decoration: InputDecoration(
              //             hintText: "Reach out..",
              //               hintStyle: TextStyle(color: Colors.blueGrey[300]),
              //               labelStyle: TextStyle(),
              //               hintTextDirection: TextDirection.ltr,
              //               border: InputBorder.none),maxLines: 100,),
              //         ))),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: htofCont*0.05,
                    width: wtofCont*0.50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Texts(data: "Send",))
                      ],
                    )),
              ),



              //Bottom Section #################################################################################
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Container(
                  width: wtofCont*0.80,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Image.asset( "assets/icons8-linkedin-50.png",
                                    scale: 1.6,),
                              onTap:() async {
                                await launchURL("https://linkedin.com/in/vipin-karma-s");
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
                      )
                    ],
                  ),
                ),
              ),






            ],
          ),),




         Padding(
           padding: const EdgeInsets.only(right: 50,),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               GestureDetector(
                 onTap: (){
                   functions.scrollToProjectDesk(homeKey);
                 },
                   child: Texts(data: "Back to Top",color: Colors.black,fontFamily: 'ArchivoBlack',size: 15,)),
             ],
           ),
         ),
        SizedBox(height: 30,)
      ],
    );
  }
  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}


