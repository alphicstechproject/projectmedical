import 'package:application_1/presentation/widgets/home/home_widget.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF6345C3),
        leading: Image.asset(
          "assets/images/menu.png",
          width: 18.w,
          height: 16.h,
        ),
      ),
      body: const SafeArea(
        child: HomeWidget(),
      ),
    );
  }
}
