import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';

// ignore: must_be_immutable
class ChecktWidget extends StatelessWidget {
  ChecktWidget({
    required this.text,
    required this.top,
    required this.isTrue,
    required this.left,
    super.key,
  });

  final String text;
  final double top;
  final double left;
  bool isTrue;
  // final dynamic validator;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setstate) {
      return Padding(
        padding: EdgeInsets.only(top: top,left:left ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                focusColor: const Color(0xffD7F0F7),
                activeColor: ColorManager().backGround,
                checkColor: Colors.white,
                value: isTrue,
                onChanged: (bool? val) {
                  setstate(() {
                    isTrue = !isTrue;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style:  TextStyle(
                    color:  ColorManager().backGround,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      );
    });
  }
}
