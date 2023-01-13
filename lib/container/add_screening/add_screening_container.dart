import 'package:application_1/presentation/widgets/add_screening/add_screening_widget.dart';
import 'package:flutter/material.dart';

class AddScreeningContainer extends StatefulWidget {
  const AddScreeningContainer({Key? key}) : super(key: key);

  @override
  State<AddScreeningContainer> createState() => _AddScreeningContainerState();
}

class _AddScreeningContainerState extends State<AddScreeningContainer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddScreeningWidget(),
      ),
    );
  }
}
