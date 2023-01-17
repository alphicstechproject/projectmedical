import 'package:application_1/container/add_screening/add_screening_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/add_screening/add_screening_cubit.dart';

class AddScreening extends StatelessWidget {
  const AddScreening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddScreeningCubit(),
      child: const AddScreeningContainer(),
    );
  }
}
