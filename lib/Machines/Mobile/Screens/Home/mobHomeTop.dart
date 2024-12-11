import 'package:flutter/material.dart';

import '../../../../Util/Text.dart';

class MobHomeTop extends StatelessWidget {
  const MobHomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: width*0.15,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/dog_paw_logo.png',
                                fit: BoxFit.fill,
                              )),
                        ),
                      Texts(
                        data: " Dev",
                          fontFamily: 'ArchivoBlack',
                        color: Colors.grey[400],
                        size: 20,
                      )
                      ],
                    ),
                  ],
                ),
              ],
            )),

      ],
    );
    
  }
}
