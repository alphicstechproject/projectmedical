import 'package:application_1/presentation/widgets/common/radio_button.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class FourScreeningWidget extends StatelessWidget {
  const FourScreeningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 35.h),
          Text(
            '4. Taking service (Pregnant women)',
            style: TextStyle(
              fontSize: 18.s,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato-Bold',
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'Are you currently consuming IFA',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              const CustomRadioButton(
                isSelected: false,
                unSelectedBorderActive: true,
              ),
              SizedBox(width: 30.w),
              const Text('Yes'),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            'Why did you discontinued taking',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          Text(
            'Are you attending VHSND/Hospital for your ANC checkups',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          Row(
            children: [
              const CustomRadioButton(
                isSelected: false,
                unSelectedBorderActive: true,
              ),
              SizedBox(width: 30.w),
              const Text('Yes'),
            ],
          ),
        ],
      ),
    );
  }
}
