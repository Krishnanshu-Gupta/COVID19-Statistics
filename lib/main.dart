import 'package:Covid19/pages/home.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(
    new CupertinoApp(
      debugShowCheckedModeBanner: false,

      title: 'COVID-19 Statistics',

      theme: CupertinoThemeData(


        textTheme: CupertinoTextThemeData(


        ),



      ),


      home: Home(),
    ),
  );
}