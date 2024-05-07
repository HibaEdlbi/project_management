import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';

class TextfieldAuthWidget extends StatelessWidget {
  const TextfieldAuthWidget({
    required this.controller,
    required this.text,
    required this.top,
    super.key,
  });
  final TextEditingController controller;
  final String text;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
              width: 226,
              height: 43,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(119, 193, 193, 0.75),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                controller: controller,
                validator: (val) =>
                    val!.isEmpty ? "$text Can't be empty" : null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager().blue),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager().blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager().blue),
                    ),
                    label: Text(
                      text,
                      style: TextStyle(
                          color: ColorManager().backGround,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )),
              )),
        ),
      ),
    );
  }
}
