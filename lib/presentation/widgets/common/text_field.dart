import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final Function(String?)? onChanged;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      margin: EdgeInsets.symmetric(horizontal: 15.hs),
      child: TextFormField(
        controller: widget.textEditingController,
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
          hintText: widget.hintText,
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
        onChanged: (value) {
          setState(() {});
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
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
