import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';

class JoinButtonWidget extends StatelessWidget {
  const JoinButtonWidget({
    required this.onTap,
    super.key,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.only(
            top: 330,
          ),
          child: InkWell(
            onTap: onTap,
            child: Center(
              child: Container(
                width: 383,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager().yellow),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: ColorManager().yellow,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: ColorManager().backGround,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("join",
                          style: TextStyle(
                              color: ColorManager().yellow,
                              fontSize: 30,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
