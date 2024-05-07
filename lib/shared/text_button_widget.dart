import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({
    required this.onTap,
    required this.text,
    required this.top,
    required this.option,
    super.key,
  });
  final VoidCallback onTap;
  final String text;
  final double top;

  final String option;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
              TextButton(
                  onPressed: onTap,
                  child: Text(
                    option,
                    style: const TextStyle(
                        color: Color.fromRGBO(119, 193, 193, 0.75),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          )),
    );
  }
}
