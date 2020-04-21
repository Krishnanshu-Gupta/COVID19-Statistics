import 'package:Covid19/icons/other_list_icons.dart';
import 'package:Covid19/pages/Latest_statistics.dart';
import 'package:Covid19/pages/search.dart';
import 'package:Covid19/pages/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Covid19/icons/myiconsfile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return CupertinoTabScaffold(

      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.destructiveRed,
        inactiveColor: CupertinoColors.label,
        items: [
          BottomNavigationBarItem(

            icon: Icon(OtherList.chart_line, size: 24,),
            title: Text("Latest Statistics"),

          ),
          BottomNavigationBarItem(

            icon: Icon(MyFlutterApp.earth, size: 24,),
              title: Text("All Countries")

          ),

          BottomNavigationBarItem(

              icon: Icon(MyFlutterApp.question_circle, size: 24,),
              title: Text("App Info")

          ),


        ],

      ) ,


      tabBuilder: (context,index){

        if(index == 0){

          return Latest_State();
        }else if(index == 1){

          return Search();
        }


      else return Setting();

      },
    );
  }
}
