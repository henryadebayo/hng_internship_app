import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_internship_app/button.dart';

import 'const.dart';
class FormPage extends StatefulWidget {
  const FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KdarkBlueColour,
        centerTitle: true,
        title: Text("HNG InternShip By Zuri", style:TextStyle(color: Colors.white, ),
        ),
        actions: [
          Container(
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: AssetImage("images/image1.jpeg"),
            ),
          ),
        ],
      ),
      body:
          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 10.0, right: 10.0),
            child: Column(
              children:[
              Text("Hi Welcome to the HNG Interenship app, powered by Zuri"
              , textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.w400),),
               SizedBox(height: 50.0,),
               Container(
                 height: 200.0,
                 width: 200.0,
                 decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.only(bottomRight:Radius.circular(20.0),
                     topLeft: Radius.circular(20.0),
                   )
                 ),
                ),
                SizedBox(height: 50.0,),
                Text("Click the button below to fill the form"
                  , textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.w400),),
                RoundWhiteButton(label: "Form",
                  //onTap: Navigator.of(context BuildContext).MaterialPageRoute,
                ),
          ]),
          ),
    );
  }
}
