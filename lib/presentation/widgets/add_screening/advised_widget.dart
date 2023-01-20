import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class AdvisedWidget extends StatelessWidget {
  final List<String> advisedData;
  final String selectedreferHospital;
  final Function({
    required String referHospital,
  }) referHospitalOnchange;
  final List<String> hospitalList;
  final TextEditingController addOtherAdviseField;
  final Function({
    required String otherAdvise,
  }) addOtherAdviseOnchange;
  const AdvisedWidget({
    Key? key,
    required this.advisedData,
    required this.hospitalList,
    required this.referHospitalOnchange,
    required this.selectedreferHospital,
    required this.addOtherAdviseField,
    required this.addOtherAdviseOnchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.hs, vertical: 10.vs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: advisedData.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Text(
                advisedData[index],
                style: TextStyle(
                  fontSize: 16.s,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lato-Bold',
                ),
              );
            },
          ),
          SizedBox(height: 10.h),
          // Text(
          //   'Number of IFA tablet (For six months)',
          //   style: TextStyle(
          //     fontSize: 16.s,
          //     fontWeight: FontWeight.w700,
          //     fontFamily: 'Lato-Bold',
          //   ),
          // ),
          // SizedBox(height: 10.h),
          // Text(
          //   'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus. Egestas urna risus nulla auctor elementum molestie adipiscing nisl purus.',
          //   style: TextStyle(
          //     fontSize: 14.s,
          //     fontWeight: FontWeight.w400,
          //     fontFamily: 'Lato-Thin',
          //     color: const Color(0xFF616568),
          //   ),
          // ),
          // SizedBox(height: 15.h),
          // Text(
          //   'Number of Amal ka candy For six month',
          //   style: TextStyle(
          //     fontSize: 16.s,
          //     fontWeight: FontWeight.w700,
          //     fontFamily: 'Lato-Bold',
          //   ),
          // ),
          // SizedBox(height: 10.h),
          // Text(
          //   'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus. ',
          //   style: TextStyle(
          //     fontSize: 14.s,
          //     fontWeight: FontWeight.w400,
          //     fontFamily: 'Lato-Thin',
          //     color: const Color(0xFF616568),
          //   ),
          // ),
          // SizedBox(height: 15.h),
          // Text(
          //   'Blood transfusion advised',
          //   style: TextStyle(
          //     fontSize: 16.s,
          //     fontWeight: FontWeight.w700,
          //     fontFamily: 'Lato-Bold',
          //   ),
          // ),
          // SizedBox(height: 10.h),
          // Text(
          //   'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus.',
          //   style: TextStyle(
          //     fontSize: 14.s,
          //     fontWeight: FontWeight.w400,
          //     fontFamily: 'Lato-Thin',
          //     color: const Color(0xFF616568),
          //   ),
          // ),
          // SizedBox(height: 15.h),
          Text(
            'Refer to hospital',
            style: TextStyle(
              fontSize: 16.s,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato-Bold',
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.hs),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFC9CCCF),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButton(
              underline: const SizedBox(),
              icon: Icon(
                Icons.expand_more_rounded,
                size: 18.s,
                color: const Color(0xFF202223),
              ),
              isExpanded: true,
              value: selectedreferHospital.isNotEmpty
                  ? selectedreferHospital
                  : null,
              hint: Text(
                'Select ANM name',
                style: TextStyle(
                  fontSize: 14.f,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF616568),
                ),
              ),
              //value: 'h',
              onChanged: (newValue) => referHospitalOnchange(
                referHospital: newValue.toString(),
              ),
              items: hospitalList.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Other points',
            style: TextStyle(
              fontSize: 16.s,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lato-Bold',
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Add other advised',
            style: TextStyle(
              fontSize: 14.s,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato-Regular',
              color: const Color(0xFF161413),
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 48.h,
            child: TextFormField(
              controller: addOtherAdviseField,
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
                hintText: 'User name',
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
              onChanged: (value) => addOtherAdviseOnchange(otherAdvise: value),
            ),
          ),
        ],
      ),
    );
  }
}
