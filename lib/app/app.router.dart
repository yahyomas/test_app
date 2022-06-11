// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../presentation/home/home_screen.dart';
import '../presentation/otp/otp_screen.dart';
import '../presentation/signin/signIn_screen.dart';
import '../presentation/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signInScreen = '/sign-in-screen';
  static const String otpScreen = '/otp-screen';
  static const String homeScreen = '/home-screen';
  static const all = <String>{
    splashScreen,
    signInScreen,
    otpScreen,
    homeScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signInScreen, page: SignInScreen),
    RouteDef(Routes.otpScreen, page: OtpScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreen(),
        settings: data,
      );
    },
    SignInScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignInScreen(),
        settings: data,
      );
    },
    OtpScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OtpScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeScreen(),
        settings: data,
      );
    },
  };
}
