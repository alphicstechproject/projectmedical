import 'package:application_1/cubit/profile/profile_cubit.dart';
import 'package:application_1/presentation/widgets/profile/profile_widget.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProfileCubit>(context).getProfileDetails();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF6345C3),
            leading: Image.asset(
              "assets/images/menu.png",
              width: 18.w,
              height: 16.h,
            ), // you can put Icon as well, it accepts any widget.
            // title: Text("Your Title"),

            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10.hs),
                child: Image.asset(
                  "assets/images/notification.png",
                  width: 20.w,
                  height: 20.w,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: ProfileWidget(
              employeeData: state.currentEmployeeData,
              isLoading: state.getProfileDetails.maybeWhen(
                orElse: () => false,
                inProgress: () => true,
                success: (_) => false,
              ),
            ),
          ),
        );
      },
    );
  }
}
