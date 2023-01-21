import 'dart:io';

import 'package:application_1/cubit/login/login_cubit.dart';
import 'package:application_1/presentation/screens/login/login_screen.dart';
import 'package:application_1/presentation/widgets/add_screening/advised_widget.dart';
import 'package:application_1/presentation/widgets/add_screening/four_screening_widget.dart';
import 'package:application_1/presentation/widgets/add_screening/four_screening_widget.dart';
import 'package:application_1/utils/responsive/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/widgets/add_screening/third_screening_widget.dart';

void main() {
  Responsiveness.init();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness:
          Platform.isIOS ? Brightness.dark : Brightness.light,
      statusBarBrightness: Platform.isIOS ? Brightness.dark : Brightness.light,
      statusBarColor: const Color(0xFF364954),
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(
              // repository: context.read<AuthRepository>(),
              ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato', focusColor: const Color(0xFFC9CCCF),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFC9CCCF),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFC9CCCF),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFC9CCCF),
              ),
            ),
          ),

          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: const Color(0xFFC9CCCF),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3500), () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.png',
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
