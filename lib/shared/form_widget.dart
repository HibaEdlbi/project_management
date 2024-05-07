import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_management/core/resources/colors.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    required this.colume,
    required this.height,
    required this.width,
    // required this.top,
    // required this.left,
    required this.image,
    super.key,
  });
  final Widget colume;
  final String image;
  final double height;
  final double width;
  // final double top;
  // final double left;
  // final dynamic validator;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              child: SingleChildScrollView(
                  child: colume,
                ),
              height: height,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xffCD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
            ),
            
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager().yellow,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 35),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager().heavenly,
                  image: DecorationImage(image: AssetImage(image))),
            ),
          ),
        ),
      ],
    );
  }
}
