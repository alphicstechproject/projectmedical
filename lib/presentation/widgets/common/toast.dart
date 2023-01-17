import 'package:flutter/material.dart';

import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '/utils/responsive/responsiveness.dart';

/// [color] to get color for image and border
Color color(ToastStatus status) => status == ToastStatus.success
    ? Colors.green
    : status == ToastStatus.info
        ? Colors.blue
        : status == ToastStatus.warning
            ? Colors.yellow
            : status == ToastStatus.error
                ? Colors.red
                : Colors.black;

/// [backgroundColor] to get color for image and border
Color backgroundColor(ToastStatus status) => Colors.white;

/// [image] to get image according to toast status
String image(ToastStatus status) => status == ToastStatus.success
    ? 'assets/images/check.png'
    : status == ToastStatus.info
        ? 'assets/images/info_purple.png'
        : status == ToastStatus.warning
            ? 'assets/images/info_yellow.png'
            : 'assets/images/info_red.png';

/// [ToastStatus] to manage color and image according to status
enum ToastStatus { success, info, warning, error }

/// [showCustomToast] to show toast message
void showCustomToast(
  BuildContext context, {
  required ToastStatus status,
  required String message,
}) =>
    showToastWidget(
      SizedBox(
        width: 340.w,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          color: backgroundColor(status),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.d),
            side: BorderSide(
              color: color(status),
              width: 1.w,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.s),
            child: Row(
              children: [
                Image.asset(
                  image(status),
                  height: 16.h,
                  width: 16.w,
                ),
                SizedBox(width: 8.w),
                SizedBox(
                  width: 277.w,
                  child: Text(
                    message,
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.f,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      context: context,
      alignment: Alignment.center,
      axis: Axis.horizontal,
      position: StyledToastPosition.bottom,
      isIgnoring: false,
      animation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.none,
      duration: const Duration(seconds: 3),
      dismissOtherToast: true,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    );
