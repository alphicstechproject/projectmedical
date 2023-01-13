import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class SecondScreeningWidget extends StatelessWidget {
  const SecondScreeningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 35.h),
          Text(
            '2. Anthropometry',
            style: TextStyle(
              fontSize: 18.s,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato-Bold',
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Weight in kg',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48.h,
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
                hintText: 'Enter weight',
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
          ),
          SizedBox(height: 10.h),
          Text(
            'Height in centimeter',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48.h,
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
                hintText: 'Enter Height',
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
          ),
          SizedBox(height: 10.h),
          Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48.h,
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
                hintText: 'Enter BMI',
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
          ),
          SizedBox(height: 10.h),
          Text(
            'BMI Scale',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48.h,
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
                hintText: '-AUTO-',
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
          ),
        ],
      ),
    );
  }
}
