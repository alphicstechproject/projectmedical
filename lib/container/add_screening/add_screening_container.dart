import 'package:application_1/cubit/add_screening/add_screening_cubit.dart';
import 'package:application_1/presentation/widgets/add_screening/add_screening_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreeningContainer extends StatefulWidget {
  const AddScreeningContainer({Key? key}) : super(key: key);

  @override
  State<AddScreeningContainer> createState() => _AddScreeningContainerState();
}

class _AddScreeningContainerState extends State<AddScreeningContainer> {
  late TextEditingController aadharcardField;
  late TextEditingController mobileNoField;
  late TextEditingController respondent;

  @override
  void initState() {
    super.initState();
    aadharcardField = TextEditingController();
    mobileNoField = TextEditingController();
    respondent = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddScreeningCubit, AddScreeningState>(
      builder: (context, state) {
        final addScreeningCubit = BlocProvider.of<AddScreeningCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: AddScreeningWidget(
              dateSelect: addScreeningCubit.dateSelect,
              aadharcardField: aadharcardField,
              aadharcardFieldChnage: addScreeningCubit.aadharcardOnchange,
              mobileNoField: mobileNoField,
              mobileNoFieldChnage: addScreeningCubit.mobileNoOnchange,
              respondentField: TextEditingController(),
              respondentFieldChnage: ({required String respondent}) {},
            ),
          ),
        );
      },
    );
  }
}
