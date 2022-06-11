import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Future<dynamic> pushNamed(
      {required String routeName,
      Object? arguments,
      GlobalKey<NavigatorState>? nestedKey}) {
    if (nestedKey != null) {
      return nestedKey.currentState!.pushNamed(routeName, arguments: arguments);
    }

    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? pushReplacement(
      {required String routeName, Object? arguments}) async {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic>? newRootScreen(
    String newRouteName, {
    RoutePredicate? predicate,
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      newRouteName,
      predicate ?? (_) => false,
      arguments: arguments,
    );
  }

  static void back<T extends Object?>({T? result}) {
    navigatorKey.currentState!.pop(result);
  }

  static void showErrorToast(String text) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 18.0,
    );
  }
}
