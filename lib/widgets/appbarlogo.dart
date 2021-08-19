import 'package:flutter/material.dart';


class appbarLogo extends StatelessWidget {
  const appbarLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        image: DecorationImage(
          image: AssetImage("images/image2.jpeg"),
        ),
      ),
    );
  }
}

