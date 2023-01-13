import 'package:application_1/presentation/screens/home/home_screen.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          // color: Colors.amber,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/profile_pic.png",
                  width: MediaQuery.of(context).size.width,
                  height: 116.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    'Tulshi Sharma',
                    style: TextStyle(
                      fontSize: 16.s,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato-Bold',
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    '9817631341',
                    style: TextStyle(
                      fontSize: 14.s,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato-Thin',
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.hs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Designation : ',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                      Text(
                        'Asha Worker',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.hs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Block : ',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                      Text(
                        'Dhramgadh',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.hs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub center : ',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                      Text(
                        'Dhaspur',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.hs),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Village : ',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                      Text(
                        'Dhaspur',
                        style: TextStyle(
                          fontSize: 14.s,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato-Thin',
                        ),
                      ),
                    ],
                  ),
                )
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
                'View Screening',
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
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
