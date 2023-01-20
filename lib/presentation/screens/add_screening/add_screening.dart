import 'package:application_1/container/add_screening/add_screening_container.dart';
import 'package:application_1/model/screening/screening_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/add_screening/add_screening_cubit.dart';

class AddScreening extends StatelessWidget {
  final ScreeningModel? screeningData;
  const AddScreening({
    Key? key,
    this.screeningData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddScreeningCubit(),
      child: AddScreeningContainer(
        screeningData: screeningData,
      ),
    );
  }
}
