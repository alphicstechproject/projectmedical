import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class SecondScreeningWidget extends StatelessWidget {
  final TextEditingController weightField;
  final Function({
    required String weight,
  }) weightFieldChnage;
  final TextEditingController heightField;
  final Function({
    required String height,
  }) heightFieldChnage;
  final double bmi;
  const SecondScreeningWidget({
    Key? key,
    required this.heightField,
    required this.heightFieldChnage,
    required this.weightField,
    required this.weightFieldChnage,
    required this.bmi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.hs, vertical: 10.vs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
              controller: weightField,
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
              onChanged: (value) => weightFieldChnage(weight: value),
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
              controller: heightField,
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
              onChanged: (value) => heightFieldChnage(height: value),
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
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFC9CCCF),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.hs),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bmi != 0.0 ? bmi.toString() : 'Enter BMI',
                style: TextStyle(
                  color: const Color(0xFF616568),
                  fontSize: 14.f,
                  fontWeight: FontWeight.w400,
                ),
              ),
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
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFC9CCCF),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.hs),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bmi < 18.5
                    ? 'Underweight'
                    : (bmi > 18.5 && bmi < 25)
                        ? 'Healthy Weight'
                        : (bmi > 25 && bmi < 30)
                            ? 'Overweight'
                            : bmi > 30
                                ? 'Obesity'
                                : '-AUTO-',
                style: TextStyle(
                  color: const Color(0xFF616568),
                  fontSize: 14.f,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
