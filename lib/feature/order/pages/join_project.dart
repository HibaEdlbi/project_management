import 'package:flutter/material.dart';
import 'package:project_management/core/resources/colors.dart';
import 'package:project_management/feature/order/widget/image_widget.dart';
import 'package:project_management/feature/order/widget/join_button_widget.dart';
import 'package:project_management/shared/button_widget.dart';

class JoinOrCreateProject extends StatefulWidget {
  const JoinOrCreateProject({super.key});

  @override
  State<JoinOrCreateProject> createState() => _JoinOrCreateProjectState();
}

class _JoinOrCreateProjectState extends State<JoinOrCreateProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager().backGround,
      body: Stack(
        children: [
          const ImageWidget(
            image: "assets/images/rectanglee.png",
            height: 280,
            top: 60,
            width: 350,
            left: 20,
          ),
          const ImageWidget(
            image: "assets/images/white_bear.png",
            height: 214.8,
            top: 75,
            width: 179.47,
            left: 20,
          ),
          const ImageWidget(
            image: "assets/images/ossc.png",
            height: 49.28,
            top: 180,
            width: 265.94,
            left: 70,
          ),
          AuthButtonWidget(
            onTap: () {},
            text: "create",
            top: 100,
            height: 60,
            width: 383,
            color: ColorManager().yellow,
            textColor: ColorManager().backGround,
          ),
          JoinButtonWidget(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
