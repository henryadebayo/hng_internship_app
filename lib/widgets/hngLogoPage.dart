import 'package:flutter/material.dart';


class GroupLogo extends StatelessWidget {
  const GroupLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
      child: Container(
        height: 100.0,
        width: double.infinity,
        //color: Colors.blue,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF0E3E3E3),
        ),
        child: Row(
          children: [
            SizedBox(width:30.0),
            Container(
                height: 80.0,
                child: Image(image: AssetImage("images/image1.jpeg"),)),
            SizedBox(width:20.0),
            Container(
                height: 80.0,
                child: Image(image: AssetImage("images/image2.jpeg"),)),
            SizedBox(width:20.0),
            Container(
                height: 80.0,
                child: Image(image: AssetImage("images/image3.jpeg"),)),


            SizedBox(width:20.0),
          ],
        ),
      ),
    )
    );
  }
}
