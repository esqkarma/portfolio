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
            height: height * 0.06,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
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
                      size: 18,
                      fontweight: FontWeight.bold,
                      color: Colors.black26,
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Texts(
                        data: "projects",
                        size: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Texts(
                        data: "connect",
                        size: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          child: Divider(
            thickness: 0.5,
          ),
        )
      ],
    );
    
  }
}
