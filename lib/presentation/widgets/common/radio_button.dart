import 'package:application_1/presentation/widgets/common/radio_button_canvas.dart';
import 'package:flutter/material.dart';

import '/utils/responsive/responsiveness.dart';

/// [CustomRadioButton] is a common widget to display UI for radio button.
class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final bool? unSelectedBorderActive;

  const CustomRadioButton({
    Key? key,
    required this.isSelected,
    this.unSelectedBorderActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      child: CustomPaint(
        painter: DrawCircle(
          isSelected: isSelected,
          unSelectedBorderActive: unSelectedBorderActive!,
        ),
      ),
    );
  }
}
