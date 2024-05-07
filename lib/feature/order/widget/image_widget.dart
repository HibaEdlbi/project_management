import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.image,
    required this.height,
    required this.top,
    required this.left,
    required this.width,
    super.key,
  });

  final double width;
  final double top;
  final double left;
  final double height;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: top,left:left ),
        child: Align(
          alignment: Alignment.topLeft,
          child:
              SizedBox(height: height, width: width, child: Image.asset(image)),
        ));
  }
}
