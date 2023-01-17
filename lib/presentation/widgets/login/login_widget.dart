import 'package:application_1/presentation/widgets/common/button.dart';
import 'package:application_1/presentation/widgets/common/loader.dart';
import 'package:application_1/presentation/widgets/common/text_field.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final TextEditingController userName;
  final TextEditingController password;
  final Function({
    required String name,
    required String password,
  }) onChangeField;
  final Function() tapOnLogin;
  final bool isLoading;
  final bool isRemembered;
  final VoidCallback isRemember;
  const LoginWidget({
    Key? key,
    required this.userName,
    required this.password,
    required this.tapOnLogin,
    required this.onChangeField,
    this.isLoading = false,
    required this.isRemember,
    required this.isRemembered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      alignment: AlignmentDirectional.topCenter,
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 50.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 9.0),
                Expanded(
                  child: Column(
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
                      CustomTextField(
                        hintText: 'User name',
                        textEditingController: userName,
                        onChanged: (value) => onChangeField(
                          name: value!,
                          password: password.text,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      CustomTextField(
                        hintText: 'Password',
                        textEditingController: password,
                        onChanged: (value) => onChangeField(
                          password: value!,
                          name: userName.text,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.hs),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => isRemember(),
                              child: Container(
                                height: 20.w,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  color: isRemembered
                                      ? Colors.green
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: isRemembered
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 14.s,
                                      )
                                    : const SizedBox.shrink(),
                              ),
                            ),
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
                          FocusManager.instance.primaryFocus?.unfocus();
                          tapOnLogin();
                        },
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: MediaQuery.of(context).size.height / 5.5),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.hs),
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
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   child: Container(
        //     margin: EdgeInsets.only(
        //       left: 10.hs,
        //       right: 10.vs,
        //       bottom: 10.vs,
        //     ),
        //     child: Row(
        //       children: [
        //         Image.asset(
        //           "assets/images/odisha.png",
        //           width: 38.w,
        //           height: 41.h,
        //         ),
        //         SizedBox(width: 15.w),
        //         Expanded(
        //           child: Text(
        //             'Department of Health & Family Welfare, Kalahandi District, Odisha',
        //             style: TextStyle(
        //               fontSize: 12.s,
        //               fontFamily: 'Lato-Regular',
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
