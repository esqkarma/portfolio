
import 'package:flutter/material.dart';
import 'package:web/Machines/Desktop/Screens/About%20Me/Skills.dart';
import 'package:web/Machines/Desktop/Screens/About%20Me/aboutMe.dart';
import 'package:web/Machines/Desktop/Screens/Contact/Contact.dart';
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
  // Functions functions = Functions();

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
        duration: const Duration(milliseconds: 900),
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
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeTop(key: homeKey,
                  ProjectonButtonpressed:()=>scrollToSection(proKey!) ,
                  SkillonButtonpressed: ()=>scrollToSection(SkillKey),
                  ConnectonButtonpressed: ()=>scrollToSection(ConnectKey),
                  AboutonButtonpressed: ()=>scrollToSection(AboutMeKey),),
                HomeBody(),
                // ProjectDesk(key: projectDeskKey,),
                Skills(key: SkillKey,),
                SizedBox(height: 100,),
                AboutMe(key: AboutMeKey,),
                Contact(homeKey: homeKey,key: ConnectKey)



              ],
            )
          ],
        ),);
  }
}
