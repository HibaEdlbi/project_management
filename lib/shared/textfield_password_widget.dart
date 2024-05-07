import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';

class TextfieldPasswordAuthWidget extends StatefulWidget {
  const TextfieldPasswordAuthWidget({
    // required this.controller,
    required this.text,
    required this.top,
    super.key, required TextEditingController controller, 
  });
  // final TextEditingController controller;
  final String text;
  final double top;

  

  @override
  State<TextfieldPasswordAuthWidget> createState() => _TextfieldPasswordAuthWidgetState();
}

class _TextfieldPasswordAuthWidgetState extends State<TextfieldPasswordAuthWidget> {
  final TextEditingController controller = TextEditingController();
   bool _passwordVisible = false;

 
@override
  void initState() {
     _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: EdgeInsets.only(top: widget.top),
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
                 obscureText: !_passwordVisible,
                validator: (val) =>
                    val!.isEmpty ? "${widget.text} Can't be empty" : null,
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
                    widget.text,
                    style: TextStyle(
                        color: ColorManager().backGround,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorManager().heavenly,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                         _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
