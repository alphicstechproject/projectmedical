import 'package:application_1/cubit/login/login_cubit.dart';
import 'package:application_1/presentation/screens/profile/profile_screen.dart';
import 'package:application_1/presentation/widgets/common/toast.dart';
import 'package:application_1/presentation/widgets/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  late TextEditingController userName;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    userName = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          previous.getAuthenticationState != current.getAuthenticationState,
      listener: (context, state) async {
        state.getAuthenticationState.maybeWhen(
          orElse: () => Container(),
          inProgress: () => Container(),
          initial: () => Container(),
          failed: (error) => showCustomToast(
            context,
            status: ToastStatus.error,
            message: error,
          ),
          success: (success) => {
            showCustomToast(
              context,
              status: ToastStatus.success,
              message: success,
            ),
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            )
          },
          warning: () => showCustomToast(
            context,
            status: ToastStatus.warning,
            message: 'Kindly fill all the data',
          ),
        );
      },
      builder: (context, state) {
        final loginCubit = BlocProvider.of<LoginCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: LoginWidget(
              userName: userName,
              password: password,
              tapOnLogin: loginCubit.checkAuthentication,
              isLoading: state.getAuthenticationState.maybeWhen(
                orElse: () => false,
                inProgress: () => true,
                success: (_) => false,
              ),
              onChangeField: loginCubit.updateField,
              isRemember: loginCubit.isRemember,
              isRemembered: state.isRemember,
            ),
          ),
        );
      },
    );
  }
}
