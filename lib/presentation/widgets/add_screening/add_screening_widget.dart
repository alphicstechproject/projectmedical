import 'package:application_1/presentation/widgets/common/radio_button.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class AddScreeningWidget extends StatelessWidget {
  const AddScreeningWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.hs, vertical: 10.vs),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date of Screening',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Aadhar Card',
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
                      hintText: 'Enter Aadhar No',
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
                  'Mobile No.',
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
                      hintText: 'Enter  Mobile Number',
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
                SizedBox(height: 15.h),
                Text(
                  '1.General Information',
                  style: TextStyle(
                    fontSize: 18.s,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato-Bold',
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  'Name of respondent',
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
                      hintText: 'Enter respondent name',
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
                  'Father',
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
                      hintText: 'Enter name',
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
                  'Age (In completed year)',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                // Container(
                //   padding: EdgeInsets.only(left: 20, right: 20),
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.grey),
                //       borderRadius: BorderRadius.circular(5)),
                //   child: DropdownButton(
                //     underline: SizedBox(),
                //     isExpanded: true,
                //     hint: Text('company_name_text'),
                //     value: 'check',
                //     onChanged: (newValue) {
                //       // setState(() {
                //       //   cabCompanyName = newValue;
                //       // });
                //       // hideKeyboard();
                //     },
                //     // items: cabCompany.cabCompanyList.map((cab) {
                //     //   return DropdownMenuItem(
                //     //     child: new Text(cab.vendorName ?? ""),
                //     //     value: cab,
                //     //   );
                //     // }).toList(),
                //     items: items.map((String items) {
                //       return DropdownMenuItem(
                //         value: items,
                //         child: Text(items),
                //       );
                //     }).toList(),
                //   ),
                // ),
                SizedBox(height: 10.h),
                Text(
                  'Caste',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const CustomRadioButton(
                      isSelected: false,
                      unSelectedBorderActive: true,
                    ),
                    SizedBox(width: 30.w),
                    const Text('Data'),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  'Type of respondent',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    const CustomRadioButton(
                      isSelected: false,
                      unSelectedBorderActive: true,
                    ),
                    SizedBox(width: 30.w),
                    const Text('Data'),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  'Gest. Age if pregnant',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(height: 10.h),
                Text(
                  'Education Qualification',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(height: 10.h),
                Text(
                  'Block',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(height: 10.h),
                Text(
                  'Sub Center',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(height: 10.h),
                Text(
                  'Anganwadi Center',
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
                      hintText: 'Enter Anganwadi center',
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
                  'Village',
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
                      hintText: 'Enter Village',
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
                  'ANM Name',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'ASHA Worker',
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
                      hintText: 'Enter ASHA Worker',
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
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.hs,
              vertical: 10.vs,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 50.d,
                  blurStyle: BlurStyle.solid,
                )
              ],
              color: Colors.white,
            ),
            height: 50.h,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF364954).withOpacity(0.6),
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.f,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato-Bold',
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const HomeScreen(),
                      //   ),
                      // );
                    },
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
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
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.f,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato-Bold',
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const HomeScreen(),
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
