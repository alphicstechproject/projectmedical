import 'package:application_1/presentation/widgets/common/radio_button.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class FourScreeningWidget extends StatelessWidget {
  final TextEditingController hbField;
  final Function({
    required String hb,
  }) hbFieldChnage;
  final String respondentType;
  final List<Map<String, dynamic>> sickelCell;
  final Function({
    required int selectedIndex,
  }) sickelCellOnChange;
  final List<Map<String, dynamic>> malaria;
  final Function({
    required int selectedIndex,
  }) malariaOnChange;

  const FourScreeningWidget({
    Key? key,
    required this.hbField,
    required this.hbFieldChnage,
    required this.respondentType,
    required this.malaria,
    required this.malariaOnChange,
    required this.sickelCell,
    required this.sickelCellOnChange,
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
            '4. Current Anaemia status',
            style: TextStyle(
              fontSize: 18.s,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato-Bold',
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            'What is the HB. Level',
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
              controller: hbField,
              keyboardType: TextInputType.number,
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
                hintText: 'HB level',
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
              onChanged: (value) => hbFieldChnage(hb: value),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'What is current status of anaemia',
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
                hbField.text.isNotEmpty
                    ? double.parse(hbField.text) > 12 &&
                            (respondentType == 'Adolescents girls (Tribal School)' ||
                                respondentType ==
                                    'Adolescents girls (Non School going)')
                        ? 'No Anemia'
                        : (double.parse(hbField.text) >= 11.0 &&
                                    double.parse(hbField.text) <= 11.9) &&
                                (respondentType == 'Adolescents girls (Tribal School)' ||
                                    respondentType ==
                                        'Adolescents girls (Non School going)')
                            ? 'Mild Anemia'
                            : (double.parse(hbField.text) >= 8.0 &&
                                        double.parse(hbField.text) <= 8.9) &&
                                    (respondentType == 'Adolescents girls (Tribal School)' ||
                                        respondentType ==
                                            'Adolescents girls (Non School going)')
                                ? 'Moderate Anemia'
                                : (double.parse(hbField.text) >= 0.0 &&
                                            double.parse(hbField.text) <=
                                                8.0) &&
                                        (respondentType ==
                                                'Adolescents girls (Tribal School)' ||
                                            respondentType ==
                                                'Adolescents girls (Non School going)')
                                    ? 'Severe Anemia'
                                    : double.parse(hbField.text) > 11 &&
                                            respondentType == 'Pregnant Women'
                                        ? 'No Anemia'
                                        : (double.parse(hbField.text) >= 10.0 &&
                                                    int.parse(hbField.text) <= 10.9) &&
                                                respondentType == 'Pregnant Women'
                                            ? 'Mild Anemia'
                                            : 'Not Anaemic'
                    : 'Status',
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
            'have yo affected with Malaria in last 3 months',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: malaria.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              final data = malaria[index];
              return GestureDetector(
                onTap: () => malariaOnChange(
                  selectedIndex: index,
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  child: Row(
                    children: [
                      CustomRadioButton(
                        isSelected: data['selected'],
                        unSelectedBorderActive: true,
                      ),
                      SizedBox(width: 30.w),
                      Text(
                        data['type'],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          Text(
            'Do you have sickle cell disease',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Thin',
            ),
          ),
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: sickelCell.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              final data = sickelCell[index];
              return GestureDetector(
                onTap: () => sickelCellOnChange(
                  selectedIndex: index,
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  child: Row(
                    children: [
                      CustomRadioButton(
                        isSelected: data['selected'],
                        unSelectedBorderActive: true,
                      ),
                      SizedBox(width: 30.w),
                      Text(
                        data['type'],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
