import 'dart:ui';

import 'package:flutter/material.dart';


class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    required this.onTap,
    required this.text,
    required this.top,
    required this.color,
    required this.height,
    required this.width,
    required this.textColor,
    super.key,
  });
  // final VoidCallback onTap;
  final Color color;
  final VoidCallback onTap;
  final String text;
  final double top;
  final double width;
final  double height;
final Color textColor;
  // final dynamic validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.only(top: top,),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(color: textColor,fontSize: 30,fontWeight:FontWeight.w400 )
                )),
          ),
        ),
      ),
      )
    );
  }
}
