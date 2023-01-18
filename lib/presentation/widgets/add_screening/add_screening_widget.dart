import 'package:application_1/model/add_screening/employee.dart';
import 'package:application_1/presentation/widgets/add_screening/four_screening_widget.dart';
import 'package:application_1/presentation/widgets/add_screening/second_screening_widget.dart';
import 'package:application_1/presentation/widgets/add_screening/third_screening_widget.dart';
import 'package:application_1/presentation/widgets/common/loader.dart';
import 'package:application_1/presentation/widgets/common/radio_button.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class AddScreeningWidget extends StatelessWidget {
  final Function({
    required String date,
  }) dateSelect;
  final TextEditingController aadharcardField;
  final Function({
    required String aadharcard,
  }) aadharcardFieldChnage;
  final TextEditingController mobileNoField;
  final Function({
    required String mobileNo,
  }) mobileNoFieldChnage;
  final TextEditingController respondentField;
  final Function({
    required String respondent,
  }) respondentFieldChnage;
  final TextEditingController fatherField;
  final Function({
    required String father,
  }) fatherFieldChnage;
  final List<String> years;
  final String age;
  final Function({
    required String age,
  }) ageFieldChnage;
  final List<Map<String, dynamic>> cast;
  final Function({
    required int selectedIndex,
  }) castOnChange;
  final List<Map<String, dynamic>> respondentType;
  final Function({
    required int selectedIndex,
  }) respondentTypeOnChange;
  final List<String> gestAge;
  final String gestAget;
  final Function({
    required String gestAge,
  }) gestAgeFieldChnage;
  final bool gestAgeShow;
  final List<String> education;
  final String selectedEducation;
  final Function({
    required String education,
  }) educationFieldChnage;
  final List<String> block;
  final String selectedBlock;
  final Function({
    required String block,
  }) blockFieldChnage;
  final bool isLoading;
  final List<String> center;
  final String selectedCenter;
  final Function({
    required String center,
  }) centerFieldChnage;

  final TextEditingController anganwadiCenterField;
  final Function({
    required String anganwadiCenter,
  }) anganwadiCenterFieldChnage;

  final TextEditingController villageField;
  final Function({
    required String village,
  }) villageFieldChnage;

  final TextEditingController ashaWorkerField;
  final Function({
    required String ashaWorker,
  }) ashaWorkerFieldChnage;
  final VoidCallback pageChnage;

  final List<String> anm;
  final String selectedAnm;
  final Function({
    required String anm,
  }) anmFieldChnage;
  final int pageNo;

  // ------ 2------//
  final TextEditingController weightField;
  final Function({
    required String weight,
  }) weightFieldChnage;
  final TextEditingController heightField;
  final Function({
    required String height,
  }) heightFieldChnage;
  final double bmi;
// ------ 3 ------//
  final List<Map<String, dynamic>> ifa;
  final Function({
    required int selectedIndex,
  }) ifaOnChange;
  final List<Map<String, dynamic>> ancCheckup;
  final Function({
    required int selectedIndex,
  }) ancCheckupOnChange;
  final List<String> serviceDiscontinue;
  final String selectedserviceDiscontinue;
  final Function({
    required String serviceDiscontinue,
  }) serviceDiscontinueFieldChnage;
// ------ 4 ------//
  final TextEditingController hbField;
  final Function({
    required String hb,
  }) hbFieldChnage;
  final String selectedRespondentType;
  final List<Map<String, dynamic>> sickelCell;
  final Function({
    required int selectedIndex,
  }) sickelCellOnChange;
  final List<Map<String, dynamic>> malaria;
  final Function({
    required int selectedIndex,
  }) malariaOnChange;

  const AddScreeningWidget({
    Key? key,
    this.isLoading = false,
    required this.dateSelect,
    required this.aadharcardField,
    required this.aadharcardFieldChnage,
    required this.mobileNoField,
    required this.mobileNoFieldChnage,
    required this.respondentField,
    required this.respondentFieldChnage,
    required this.fatherField,
    required this.fatherFieldChnage,
    required this.years,
    required this.age,
    required this.ageFieldChnage,
    required this.cast,
    required this.castOnChange,
    required this.respondentTypeOnChange,
    required this.respondentType,
    required this.gestAge,
    required this.gestAgeFieldChnage,
    required this.gestAget,
    required this.gestAgeShow,
    required this.education,
    required this.educationFieldChnage,
    required this.selectedEducation,
    required this.block,
    required this.blockFieldChnage,
    required this.selectedBlock,
    required this.center,
    required this.centerFieldChnage,
    required this.selectedCenter,
    required this.anganwadiCenterField,
    required this.anganwadiCenterFieldChnage,
    required this.ashaWorkerField,
    required this.ashaWorkerFieldChnage,
    required this.villageField,
    required this.villageFieldChnage,
    required this.pageChnage,
    required this.anm,
    required this.anmFieldChnage,
    required this.selectedAnm,
    required this.pageNo,
    required this.heightField,
    required this.heightFieldChnage,
    required this.weightField,
    required this.weightFieldChnage,
    required this.bmi,
    required this.ifa,
    required this.ifaOnChange,
    required this.ancCheckup,
    required this.ancCheckupOnChange,
    required this.selectedserviceDiscontinue,
    required this.serviceDiscontinue,
    required this.serviceDiscontinueFieldChnage,
    required this.hbField,
    required this.hbFieldChnage,
    required this.selectedRespondentType,
    required this.malaria,
    required this.malariaOnChange,
    required this.sickelCell,
    required this.sickelCellOnChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: pageNo == 1,
          child: Container(
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
                  SizedBox(height: 5.h),
                  DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'dd-MM-yyyy',
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                    ),
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(1800),
                    lastDate: DateTime(3000),
                    onChanged: (val) => dateSelect(
                      date: val,
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
                      controller: aadharcardField,
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
                      onChanged: (value) =>
                          aadharcardFieldChnage(aadharcard: value),
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
                      controller: mobileNoField,
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
                      onChanged: (value) =>
                          mobileNoFieldChnage(mobileNo: value),
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
                      controller: respondentField,
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
                      onChanged: (value) =>
                          respondentFieldChnage(respondent: value),
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
                      controller: fatherField,
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
                      onChanged: (value) => fatherFieldChnage(father: value),
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
                      value: age.isNotEmpty ? age : null,
                      hint: Text(
                        'Select status',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF616568),
                        ),
                      ),
                      //value: 'h',
                      onChanged: (newValue) => ageFieldChnage(
                        age: newValue.toString(),
                      ),
                      items: years.map((String items) {
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
                  SizedBox(height: 10.h),
                  Text(
                    'Cast',
                    style: TextStyle(
                      fontSize: 14.s,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato-Thin',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: cast.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) {
                      final data = cast[index];
                      return GestureDetector(
                        onTap: () => castOnChange(
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
                                data['cast'],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  Text(
                    'Type of respondent',
                    style: TextStyle(
                      fontSize: 14.s,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato-Thin',
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: respondentType.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) {
                      final data = respondentType[index];
                      return GestureDetector(
                        onTap: () => respondentTypeOnChange(
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
                  Visibility(
                    visible: gestAgeShow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gest. Age if pregnant',
                          style: TextStyle(
                            fontSize: 14.s,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato-Thin',
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
                            value: gestAget.isNotEmpty ? gestAget : null,
                            hint: Text(
                              'Select Trimester',
                              style: TextStyle(
                                fontSize: 14.f,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF616568),
                              ),
                            ),
                            //value: 'h',
                            onChanged: (newValue) => gestAgeFieldChnage(
                              gestAge: newValue.toString(),
                            ),
                            items: gestAge.map((String items) {
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
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                  Text(
                    'Education Qualification',
                    style: TextStyle(
                      fontSize: 14.s,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato-Thin',
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
                      value: selectedEducation.isNotEmpty
                          ? selectedEducation
                          : null,
                      hint: Text(
                        'Select Education Qualification',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF616568),
                        ),
                      ),
                      //value: 'h',
                      onChanged: (newValue) => educationFieldChnage(
                        education: newValue.toString(),
                      ),
                      items: education.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
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
                      value: selectedBlock.isNotEmpty ? selectedBlock : null,
                      hint: Text(
                        'Select Block',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF616568),
                        ),
                      ),
                      //value: 'h',
                      onChanged: (newValue) => blockFieldChnage(
                        block: newValue.toString(),
                      ),
                      items: block.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
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
                      value: selectedCenter.isNotEmpty ? selectedCenter : null,
                      hint: Text(
                        'Select sub center',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF616568),
                        ),
                      ),
                      //value: 'h',
                      onChanged: (newValue) => centerFieldChnage(
                        center: newValue.toString(),
                      ),
                      items: center.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
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
                      controller: anganwadiCenterField,
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
                      onChanged: (value) =>
                          aadharcardFieldChnage(aadharcard: value),
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
                      controller: villageField,
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
                      onChanged: (value) => villageFieldChnage(village: value),
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
                      value: selectedAnm.isNotEmpty ? selectedAnm : null,
                      hint: Text(
                        'Select sub center',
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF616568),
                        ),
                      ),
                      //value: 'h',
                      onChanged: (newValue) => anmFieldChnage(
                        anm: newValue.toString(),
                      ),
                      items: anm.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 10.h),
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
                      controller: ashaWorkerField,
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
                      onChanged: (value) =>
                          ashaWorkerFieldChnage(ashaWorker: value),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: pageNo == 2,
          child: SecondScreeningWidget(
            heightField: heightField,
            heightFieldChnage: heightFieldChnage,
            weightField: weightField,
            weightFieldChnage: weightFieldChnage,
            bmi: bmi,
          ),
        ),
        Visibility(
          visible: pageNo == 3,
          child: ThirdScreeningWidget(
            ifa: ifa,
            ifaOnChange: ifaOnChange,
            ancCheckupShow: gestAgeShow,
            ancCheckup: ancCheckup,
            ancCheckupOnChange: ancCheckupOnChange,
            selectedserviceDiscontinue: selectedserviceDiscontinue,
            serviceDiscontinue: serviceDiscontinue,
            serviceDiscontinueFieldChnage: serviceDiscontinueFieldChnage,
          ),
        ),
        Visibility(
          visible: pageNo == 4,
          child: FourScreeningWidget(
            hbField: hbField,
            hbFieldChnage: hbFieldChnage,
            respondentType: selectedRespondentType,
            malaria: malaria,
            malariaOnChange: malariaOnChange,
            sickelCell: sickelCell,
            sickelCellOnChange: sickelCellOnChange,
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
                      backgroundColor: const Color(0xFF364954).withOpacity(0.6),
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
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6345C3),
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
                      pageChnage();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isLoading)
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.7),
            child: Center(
              child: Loader(
                size: 75.s,
              ),
            ),
          ),
      ],
    );
  }
}
