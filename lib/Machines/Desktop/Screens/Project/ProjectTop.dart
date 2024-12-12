import 'package:flutter/material.dart';
import 'package:web/Util/Text.dart';

class ProjectTop_Desk extends StatelessWidget {
  const ProjectTop_Desk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Texts(data: "Explore My",size: 17,color: Colors.black54,),
              Texts(data: "Projects",size: 32,fontFamily: 'ArchivoBlack',),

            ],
          ),
        ],
      ),
    );
  }
}
