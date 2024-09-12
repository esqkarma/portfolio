import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Util/Text.dart';

class HomeTop extends StatefulWidget {
  final VoidCallback ProjectonButtonpressed;
  final VoidCallback SkillonButtonpressed;
  final VoidCallback ConnectonButtonpressed;
  final VoidCallback AboutonButtonpressed;
   HomeTop({ Key? key,
     required this.ProjectonButtonpressed,
     required this.SkillonButtonpressed,
     required this.ConnectonButtonpressed,
     required this.AboutonButtonpressed}): super(key: key);

  @override
  State<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 10,left: 30,right: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: height * 0.06,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/dog-paw-print.png',
                                fit: BoxFit.fill,
                              )),
                        ),
                        Texts(
                          data: "App Developer",
                          size: 20,
                          fontFamily: 'ArchivoBlack',
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(

                          onPressed: widget.ProjectonButtonpressed,
                          child: Texts(
                            data: "Projects",
                            size: 20,
                            color: Colors.black87,

                          ),
                        ),
                        TextButton(
                          onPressed: widget.SkillonButtonpressed,
                          child: Texts(
                            data: "Skills",
                            size: 20,
                            color: Colors.black87,

                          ),
                        ),
                        TextButton(onPressed:  widget.AboutonButtonpressed,
                            child:Texts(data: "About Me",
                              size: 20,
                              color: Colors.black87,) ),
                        TextButton(onPressed:widget.ConnectonButtonpressed ,
                            child:Texts(data: "Connect",
                              size: 20,
                              color: Colors.black87,) ),
                      ],
                    )
                  ],
                )),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
