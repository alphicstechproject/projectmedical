import 'package:application_1/presentation/widgets/common/radio_button.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class ThirdScreeningWidget extends StatelessWidget {
  final List<Map<String, dynamic>> ifa;
  final Function({
    required int selectedIndex,
  }) ifaOnChange;
  final bool ancCheckupShow;
  final List<Map<String, dynamic>> ancCheckup;
  final Function({
    required int selectedIndex,
  }) ancCheckupOnChange;
  final List<String> serviceDiscontinue;
  final String selectedserviceDiscontinue;
  final Function({
    required String serviceDiscontinue,
  }) serviceDiscontinueFieldChnage;

  const ThirdScreeningWidget({
    Key? key,
    required this.ifa,
    required this.ifaOnChange,
    required this.ancCheckupShow,
    required this.ancCheckup,
    required this.ancCheckupOnChange,
    required this.selectedserviceDiscontinue,
    required this.serviceDiscontinue,
    required this.serviceDiscontinueFieldChnage,
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
            '3. Taking service (Adolescents)',
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
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ifa.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              final data = ifa[index];
              return GestureDetector(
                onTap: () => ifaOnChange(
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
            'Why did you discontinued taking',
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
              value: selectedserviceDiscontinue.isNotEmpty
                  ? selectedserviceDiscontinue
                  : null,
              hint: Text(
                'Select',
                style: TextStyle(
                  fontSize: 14.f,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF616568),
                ),
              ),
              //value: 'h',
              onChanged: (newValue) => serviceDiscontinueFieldChnage(
                serviceDiscontinue: newValue.toString(),
              ),
              items: serviceDiscontinue.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10.h),
          Visibility(
            visible: ancCheckupShow,
            child: Column(
              children: [
                Text(
                  'Are you attending VHSND/Hospital for your ANC checkups',
                  style: TextStyle(
                    fontSize: 14.s,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato-Thin',
                  ),
                ),
                SizedBox(height: 10.h),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ancCheckup.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    final data = ancCheckup[index];
                    return GestureDetector(
                      onTap: () => ancCheckupOnChange(
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
          )
        ],
      ),
    );
  }
}
