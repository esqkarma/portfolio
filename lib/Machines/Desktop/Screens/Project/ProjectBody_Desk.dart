import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/Machines/Desktop/Screens/Project/ProjectBanner.dart';


class ProjectBody extends StatefulWidget {
  const ProjectBody({super.key});

  @override
  State<ProjectBody> createState() => _ProjectBodyState();
}

class _ProjectBodyState extends State<ProjectBody> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;//Width of the screen
    double height = MediaQuery.of(context).size.height;
    return Container(
      width:width*0.80 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProjectBanner(projectName: "ShopIt", projectImageUrl:"assets/astronaut.jpg"),
          ProjectBanner(projectName: "Taskio", projectImageUrl: "assets/Future City.jpg"),
          ProjectBanner(projectImageUrl: "assets/SunSet.jpg",projectName: "Clima",)
        ],
      ),
    );
  }
}
