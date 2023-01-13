import 'package:application_1/presentation/screens/profile/profile_screen.dart';
import 'package:application_1/presentation/widgets/common/button.dart';
import 'package:application_1/presentation/widgets/common/text_field.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 70.w,
                  height: 60.h,
                ),
                SizedBox(height: 16.h),
                Text(
                  'Please login to your account!',
                  style: TextStyle(
                    fontSize: 16.s,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato-Regular',
                  ),
                ),
                SizedBox(height: 30.h),
                const CustomTextField(
                  hintText: 'User name',
                ),
                SizedBox(height: 15.h),
                const CustomTextField(
                  hintText: 'Password',
                ),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.hs),
                  child: Row(
                    children: [
                      SizedBox(width: 10.w),
                      Text(
                        'Remember me ! ',
                        style: TextStyle(
                          color: const Color(0xFF202223),
                          fontSize: 14.f,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                ButtonWidget(
                  title: 'LOGIN',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
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
            margin: EdgeInsets.only(
              left: 10.hs,
              right: 10.vs,
              bottom: 10.vs,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/odisha.png",
                  width: 38.w,
                  height: 41.h,
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: Text(
                    'Department of Health & Family Welfare, Kalahandi District, Odisha',
                    style: TextStyle(
                      fontSize: 12.s,
                      fontFamily: 'Lato-Regular',
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
