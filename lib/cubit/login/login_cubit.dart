import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(
          LoginState.initial(),
        );

  Future<void> checkAuthentication() async {
    if (state.nameField.isEmpty || state.passwordField.isEmpty) {
      emit(
        state.copyWith(
          getAuthenticationState: const GetAuthenticationState.warning(),
        ),
      );
    } else {
      try {
        emit(
          state.copyWith(
            getAuthenticationState: const GetAuthenticationState.inProgress(),
          ),
        );
        final response = await http.post(
          Uri.parse("https://api.anemiamuktakalahandi.in/api/login"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(
            {
              "employee_name": state.nameField,
              "password": state.passwordField,
            },
          ),
        );

        final result = jsonDecode(response.body);
        print(result['data']['employeeid']);
        if (result['status']) {
          final corebox = Hive.box('core');
          await corebox.put('employeeID', result['data']['employeeid']);
          emit(
            state.copyWith(
              getAuthenticationState: GetAuthenticationState.success(
                success: result['message'],
              ),
            ),
          );
        } else {
          emit(
            state.copyWith(
              getAuthenticationState: GetAuthenticationState.failed(
                failed: result['message'],
              ),
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            getAuthenticationState: const GetAuthenticationState.failed(
              failed: 'Error',
            ),
          ),
        );
      }
    }
  }

  void updateField({
    required String name,
    required String password,
  }) async {
    emit(
      state.copyWith(
        nameField: name,
        passwordField: password,
      ),
    );
  }

  void isRemember() async {
    emit(
      state.copyWith(
        isRemember: !state.isRemember,
      ),
    );
  }
}
