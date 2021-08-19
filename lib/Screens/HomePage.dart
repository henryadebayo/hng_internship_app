import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_internship_app/widgets/appbarlogo.dart';
import 'package:hng_internship_app/widgets/button.dart';
import 'package:hng_internship_app/widgets/hngLogoPage.dart';
import '../const.dart';
import 'formScreen.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KdarkBlueColour,
        centerTitle: true,
        title: Text("HNG InternShip", style:TextStyle(color: Colors.white, ),
        ),
        actions: [
          appbarLogo(),
          SizedBox(width: 25.0,)
        ],
      ),
      body:
          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 10.0, right: 10.0),
            child: Column(
              children:[
              Text("Hi, Welcome to the HNG Interenship app, powered by Zuri"
              , textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.w400),),
               SizedBox(height: 50.0,),
               Container(
                 height: 200.0,
                 width: 200.0,
                 decoration: BoxDecoration(
                   //color: Colors.blueAccent,
                   image: DecorationImage(
                     image: AssetImage("images/image3.jpeg"),
                   ),
                   borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.0),
                     topLeft: Radius.circular(20.0),
                   )
                 ),
                ),
                SizedBox(height: 100.0,),
                Text("Click the button below to fill the form"
                  , textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.w400, fontFamily: "GoogleSans",),),
                SizedBox(height: 20.0,),
                RoundWhiteButton(label: "Go to Form",
                  onTap:(){ Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => RegisterPage()));},
                ),
                GroupLogo()
          ]),
          ),
    );
  }
}
