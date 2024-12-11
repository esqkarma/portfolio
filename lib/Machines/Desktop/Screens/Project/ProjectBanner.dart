import 'package:flutter/material.dart';
import 'package:web/Util/Container.dart';
import 'package:web/Util/Text.dart';


class ProjectBanner extends StatelessWidget {
  final String? projectImageUrl;
  final String? projectName;
   const ProjectBanner({required this.projectName,required this.projectImageUrl,super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;//Width of the screen
    double height = MediaQuery.of(context).size.height;//Height of the Screen
    double htofCont = height * 0.65; //Height of the Container, 65% of the total height
    double wtofCont = width * 0.25;//Width of the Container, 25 % of the total width


    return Cont(
      height: htofCont,
      width: wtofCont,
      color: Colors.white,
      borderRadius: 10,
      blurRadius: 2,
      borderWidth: 0.01,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Cont(
                color: Colors.blue,
                height: htofCont * 0.70,
                width: wtofCont * 0.75,
                borderRadius: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    projectImageUrl!,
                    fit: BoxFit.fill,
                  ),
                )),
            Center(child: Texts(data: projectName,fontFamily: 'ArchivoBlack',size: 20,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Cont(
                  height: htofCont*0.07,
                  width:wtofCont*0.30,
                  borderRadius: 20,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 10,
                        minRadius: 5,
                        child: Image.network("https://th.bing.com/th?id=ODLS.e3af44e9-08e8-4ce9-8151-e19ba73b312d&w=32&h=32&qlt=90&pcl=fffffa&o=6&pid=1.2"),
                      ),
                      const SizedBox(width: 5,),
                     TextButton(onPressed: ()async{
                       // Functions.launchURL("https://github.com/esqkarma/shopit");
                     }, child:  Texts(data: "GitHub",color: Colors.black,)),

                    ],
                  ),
                ),
                Cont(
                  height: htofCont*0.07,
                  width:wtofCont*0.30,
                  borderRadius: 20,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Texts(data: "Try Now",color: Colors.black,),
                      IconButton(
                        icon:Icon(Icons.arrow_downward,size: 20,color: Colors.grey[400],),
                        onPressed: (){})
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );


  }
  // Function for downloading the file

}
