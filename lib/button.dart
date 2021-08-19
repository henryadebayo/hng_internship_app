import 'package:flutter/material.dart';

import 'const.dart';

class RoundWhiteButton extends StatelessWidget {
  final String label;
 final double height;
 final double width;
  final Function onTap;

  RoundWhiteButton({@required this.label, this.height, this.width, this.onTap});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20.0 , bottom: 40.0),
      height: height,
      width: width,
      child: RaisedButton(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color:KdarkBlueColour)),
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        textColor: KdarkBlueColour,
        onPressed: onTap,
        child: Text(label,
            style: TextStyle(fontSize: 20.0, fontFamily: "GoogleSans", )),
      ),
    );
  }
}