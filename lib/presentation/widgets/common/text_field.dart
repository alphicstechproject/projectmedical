import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      margin: EdgeInsets.symmetric(horizontal: 15.hs),
      child: TextFormField(
        //controller: mobileController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: const Color(0xFFC9CCCF),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: const Color(0xFFC9CCCF),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: const Color(0xFFC9CCCF),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: const Color(0xFFC9CCCF),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xFF616568),
            fontSize: 14.f,
            fontWeight: FontWeight.w400,
          ),
        ),
        style: TextStyle(
          color: const Color(0xFF616568),
          fontSize: 14.f,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: const Color(0xFF616568),
        // onChanged: (String? value) {
        //   // This optional block of code can be used to run
        //   // code when the user saves the form.
        //   setState(() {});
        // },
        // validator: (String? value) {
        //   return (value != null && value.contains('@'))
        //       ? 'Do not use the @ char.'
        //       : null;
        // },
      ),
    );
  }
}
