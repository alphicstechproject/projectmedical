import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15.hs),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF6345C3),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(0),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.f,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () => onTap(),
      ),
    );
  }
}
