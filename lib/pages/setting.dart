import 'dart:ui';

import 'package:Covid19/icons/link_work_icons.dart';
import 'package:Covid19/icons/other_list_icons.dart';
import 'package:Covid19/icons/paypalicon_icons.dart';
import 'package:Covid19/icons/soshal_icons.dart';
import 'package:Covid19/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

_launchGithub() async {
  const url = 'https://github.com/krishnanshu-gupta';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchLinkedin() async {
  const url = 'https://www.linkedin.com/in/krishnanshugupta/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchFacebook() async {
  const url = 'https://www.facebook.com/kreedallc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchTwitter() async {
  const url = 'https://twitter.com/Kreeda_LLC';
  if (await canLaunch(url)) {
    await launch(url);
    throw 'Could not launch $url';
  }
}

_launchInstagram() async {
  const url = 'https://www.instagram.com/kreedallc/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchNovel() async {
  const url = 'https://github.com/novelcovid/api';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchJHU() async {
  const url = 'https://github.com/CSSEGISandData/COVID-19';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchWorldmeter() async {
  const url = 'https://www.worldometers.info/coronavirus/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

var scr= new GlobalKey();


class _SettingState extends State<Setting> {
/*
  takescrshot() async {
    RenderRepaintBoundary boundary = scr.currentContext.findRenderObject();
    var image = await boundary.toImage();
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    var pngBytes = byteData.buffer.asUint8List();
    print(pngBytes);
  }
*/
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            transitionBetweenRoutes: false,
            heroTag: "appinfo",
            largeTitle: Text("App Info"),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Developed by",
                        style: TextStyle(
                            color: CupertinoColors.label.resolveFrom(context)),
                      ),
                      Text(
                        "Krishnanshu Gupta",
                        style: TextStyle(
                          color: CupertinoColors.label.resolveFrom(context),
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    
                      Container(height: 5,),

                      
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(

                      children: <Widget>[
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          color: CupertinoColors.label.resolveFrom(context),
                          onPressed: () {

                            _launchGithub();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[


                              Icon(Soshal.github__1_),

                              Container(width: 10,),


                              Text("Follow me on Github",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        Container(height: 13,),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          color: Maincolors().instagram,
                          onPressed: () {

                            _launchInstagram();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                             Icon(OtherList.instagram, color: CupertinoColors.white,),

                              Container(width: 10,),

                              Text("Follow me on Instagram",
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        Container(height: 13,),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          color: Maincolors().facebook,
                          onPressed: () {

                            _launchLinkedin();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[


                              Icon(LinkWork.linkedin),

                              Container(width: 10,),


                              Text("Follow me on Linkedin",
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        

                        

                        Container(height: 13,),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          color: Maincolors().twitter,
                          onPressed: () {

                            _launchFacebook();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[


                              Icon(Soshal.facebook__2_),

                              Container(width: 10,),


                              Text("Follow me on Facebook",
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        Container(height: 13,),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          color: Colors.green,
                          onPressed: () {

                            _launchTwitter();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[


                              Icon(Soshal.twitter__1_, color: CupertinoColors.white,),

                              Container(width: 10,),


                              Text("Follow me on Twitter",
                                style: TextStyle(
                                  color: CupertinoColors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),
                        
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 110,
                          padding: EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Information Sources:",
                                style: TextStyle(
                                  color: CupertinoColors.label.resolveFrom(context),
                                  fontWeight: FontWeight.w700,
                                  height: 4,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          
                          onPressed: () {

                            _launchNovel();

                          },
                          
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            
                             Icon(CupertinoIcons.forward),

                              Container(width: 10,),

                              Text("Novel Covid API",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          
                          onPressed: () {

                            _launchJHU();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                             Icon(CupertinoIcons.forward,),

                              Container(width: 10,),

                              Text("Johns Hopkins University",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),

                        CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          
                          onPressed: () {

                            _launchWorldmeter();

                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                             Icon(CupertinoIcons.forward,),

                              Container(width: 10,),

                              Text("Worldometer Data",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,

                                ),

                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}