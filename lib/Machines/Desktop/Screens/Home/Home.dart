import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/Machines/Desktop/Screens/About%20Me/Skills.dart';
import 'package:web/Machines/Desktop/Screens/About%20Me/aboutMe.dart';
import 'package:web/Machines/Desktop/Screens/Contact/Contact.dart';
import 'package:web/Machines/Desktop/Screens/Project/Project_Desk.dart';
import 'package:web/Util/Functions.dart';
import 'package:web/Util/Keys.dart';

import 'HomeBody.dart';
import 'HomeTop.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey homeKey = GlobalKey();
 final GlobalKey projectDeskKey = GlobalKey();
  final GlobalKey SkillKey = GlobalKey();
  final GlobalKey ConnectKey = GlobalKey();
  final GlobalKey AboutMeKey = GlobalKey();
  Functions functions = Functions();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
  Keys keys = Keys();
  @override
  Widget build(BuildContext context) {
    keys.setKey(projectDeskKey);
GlobalKey<State<StatefulWidget>>? proKey = keys.getKey();
print(proKey);
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             HomeTop(key: homeKey,
              ProjectonButtonpressed:()=>scrollToSection(proKey!) ,
             SkillonButtonpressed: ()=>functions.scrollToProjectDesk(SkillKey),
               ConnectonButtonpressed: ()=>functions.scrollToProjectDesk(ConnectKey),
               AboutonButtonpressed: ()=>functions.scrollToProjectDesk(AboutMeKey),),
             HomeBody(),
             // ProjectDesk(key: projectDeskKey,),
              Skills(key: SkillKey,),
              SizedBox(height: 100,),
              AboutMe(key: AboutMeKey,),
            Contact(homeKey: homeKey,key: ConnectKey)



            ],
          ),
        ));
  }
}
