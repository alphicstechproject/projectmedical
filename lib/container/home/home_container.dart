import 'package:application_1/cubit/home/home_cubit.dart';
import 'package:application_1/presentation/widgets/home/home_widget.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).getAllScreening();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xFF6345C3),
            leading: Image.asset(
              "assets/images/menu.png",
              width: 18.w,
              height: 16.h,
            ),
          ),
          body: SafeArea(
            child: HomeWidget(
              isLoading: state.getAllScreening.maybeWhen(
                orElse: () => false,
                inProgress: () => true,
                success: (_) => false,
              ),
              screeningData: state.screeningData,
            ),
          ),
        );
      },
    );
  }
}
