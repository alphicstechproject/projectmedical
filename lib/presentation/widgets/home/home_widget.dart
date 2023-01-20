import 'package:application_1/model/screening/screening_model.dart';
import 'package:application_1/presentation/screens/add_screening/add_screening.dart';
import 'package:application_1/presentation/widgets/common/loader.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeWidget extends StatelessWidget {
  final bool isLoading;
  final List<ScreeningModel> screeningData;
  const HomeWidget({
    Key? key,
    this.isLoading = false,
    required this.screeningData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.hs),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 48.h,
                        child: TextFormField(
                          //controller: mobileController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.w,
                                color: const Color(0xFFC9CCCF),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.d),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.w,
                                color: const Color(0xFFC9CCCF),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.d),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.w,
                                color: const Color(0xFFC9CCCF),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.d),
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.w,
                                color: const Color(0xFFC9CCCF),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.d),
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                            hintText: 'Search name or unique id',
                            hintStyle: TextStyle(
                              color: const Color(0xFF616568),
                              fontSize: 14.f,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          cursorColor: const Color(0xFF616568),
                          style: TextStyle(
                            color: const Color(0xFF616568),
                            fontSize: 14.f,
                            fontWeight: FontWeight.w400,
                          ),
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
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      height: 44.w,
                      width: 44.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6345C3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/filter.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC1EEFF),
                        border: Border.all(
                          color: const Color(0xFF6345C3),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.d),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontSize: 14.s,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato-Thin',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      height: 26.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFF616568),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.d),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Block',
                          style: TextStyle(
                            fontSize: 14.s,
                            color: Color(0xFF616568),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato-Thin',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Container(
                      height: 26.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFF616568),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.d),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Village',
                          style: TextStyle(
                            fontSize: 14.s,
                            color: Color(0xFF616568),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato-Thin',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(
                      'Last screening',
                      style: TextStyle(
                        color: const Color(0xFF202223),
                        fontSize: 16.f,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato-Regular',
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: Divider(
                        height: 24.h,
                        thickness: 2,
                        color: const Color(0xFFC9CCCF),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                    itemCount: screeningData.length,
                    shrinkWrap: true,
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final data = screeningData[index];
                      return Container(
                        height: 142.h,
                        margin: EdgeInsets.only(bottom: 10.vs),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.d,
                              blurStyle: BlurStyle.solid,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFFD2D2D2),
                            width: 1.w,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.d),
                          ),
                        ),
                        padding: EdgeInsets.all(10.s),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Screening ID.',
                                  style: TextStyle(
                                    color: const Color(0xFF616568),
                                    fontSize: 14.f,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Lato-Regular',
                                  ),
                                ),
                                Text(
                                  ' : ${data.sId}',
                                  style: TextStyle(
                                    color: const Color(0xFF202223),
                                    fontSize: 14.f,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Lato-Regular',
                                    letterSpacing: 0.5.s,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 42.w,
                                  width: 42.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFBEEDFF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      data.respondentName![0],
                                      style: TextStyle(
                                        color: const Color(0xFF6345C3),
                                        fontSize: 22.5.f,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Lato-Regular',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data.respondentName!,
                                            style: TextStyle(
                                              color: const Color(0xFF202223),
                                              fontSize: 16.f,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Lato-Regular',
                                            ),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            'Village : ${data.village}',
                                            style: TextStyle(
                                              color: const Color(0xFF616568),
                                              fontSize: 12.f,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Lato-Regular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  blurRadius: 50.d,
                                                  blurStyle: BlurStyle.solid,
                                                )
                                              ],
                                              color: const Color(0xFF39B44A),
                                              border: Border.all(
                                                color: const Color(0xFFD2D2D2),
                                                width: 1.w,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5.d),
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.hs,
                                                vertical: 2.vs),
                                            child: Text(
                                              'No Anaemia',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.f,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Lato-Regular',
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10.h),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddScreening(
                                                    screeningData: data,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'EDIT',
                                              style: TextStyle(
                                                color: Colors.transparent,
                                                decorationColor:
                                                    const Color(0xFF6345C3),
                                                fontSize: 12.f,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Lato-Regular',
                                                letterSpacing: 0.5.s,
                                                decoration:
                                                    TextDecoration.underline,
                                                shadows: const [
                                                  Shadow(
                                                    offset: Offset(0, -5),
                                                    color: Color(0xFF6345C3),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Divider(
                                height: 1.h,
                                thickness: 1,
                                color: const Color(0xFFC9CCCF),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Last update : ',
                                      style: TextStyle(
                                        color: const Color(0xFF616568),
                                        fontSize: 12.f,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Lato-Regular',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      DateFormat('dd-MM-yyy').format(
                                        DateTime.parse(data.updatedAt!),
                                      ),
                                      style: TextStyle(
                                        color: const Color(0xFF202223),
                                        fontSize: 12.f,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Lato-Regular',
                                        letterSpacing: 0.5.s,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'No. Of Screening : ',
                                      style: TextStyle(
                                        color: const Color(0xFF616568),
                                        fontSize: 12.f,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Lato-Regular',
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      data.screeningNo!,
                                      style: TextStyle(
                                        color: const Color(0xFF202223),
                                        fontSize: 12.f,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Lato-Regular',
                                        letterSpacing: 0.5.s,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })
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
                'Add Screening',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.f,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Lato-Bold',
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddScreening(),
                  ),
                );
              },
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
