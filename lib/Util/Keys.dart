
import 'package:flutter/material.dart';
class Keys{
  GlobalKey? projectKey;
  GlobalKey? skillKey;

  //ProjectKey
   GlobalKey? getKey(){
     return projectKey;
   }
    setKey(GlobalKey key)
   {
     print(key);
     projectKey=key;

   }

   

}