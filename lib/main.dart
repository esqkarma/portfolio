import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web/Machines/Desktop/desktop.dart';
import 'package:web/Machines/Mobile/MobileScreen.dart';
import 'package:web/Machines/Responsive.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SemanticsBinding.instance.ensureSemantics();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
    //home: Screen(),);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(mobileScreen: MobileScreen(), desktop: Desktop()),
    );
  }
}
