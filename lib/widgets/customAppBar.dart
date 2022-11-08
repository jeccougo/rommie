import 'package:flutter/cupertino.dart';

class CustomAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;


    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(width / 2, size.height, width, size.height - 70);
    path.lineTo(width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
 