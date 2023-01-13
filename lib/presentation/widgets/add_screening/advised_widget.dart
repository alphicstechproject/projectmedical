import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class AdvisedWidget extends StatelessWidget {
  const AdvisedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.vs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Number of IFA tablet (For six months)',
              style: TextStyle(
                fontSize: 16.s,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato-Bold',
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus. Egestas urna risus nulla auctor elementum molestie adipiscing nisl purus.',
              style: TextStyle(
                fontSize: 14.s,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato-Thin',
                color: const Color(0xFF616568),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Number of Amal ka candy For six month',
              style: TextStyle(
                fontSize: 16.s,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato-Bold',
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus. ',
              style: TextStyle(
                fontSize: 14.s,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato-Thin',
                color: const Color(0xFF616568),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Blood transfusion advised',
              style: TextStyle(
                fontSize: 16.s,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato-Bold',
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Orci mauris platea dolor vitae ut malesuada phasellus.',
              style: TextStyle(
                fontSize: 14.s,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato-Thin',
                color: const Color(0xFF616568),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Refer to hospital',
              style: TextStyle(
                fontSize: 16.s,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato-Bold',
              ),
            ),
            SizedBox(height: 15.h),
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
            SizedBox(height: 20.h),
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
                hint: Text(
                  'Select status',
                  style: TextStyle(
                    fontSize: 14.f,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF616568),
                  ),
                ),
                //value: 'h',
                onChanged: (newValue) {
                  // setState(() {
                  //   cabCompanyName = newValue;
                  // });
                  // hideKeyboard();
                },
                items: ['h', 'i', 'k'].map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // items: cabCompany.cabCompanyList.map((cab) {
                //   return DropdownMenuItem(
                //     child: new Text(cab.vendorName ?? ""),
                //     value: cab,
                //   );
                // }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
