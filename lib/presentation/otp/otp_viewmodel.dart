import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/app/app.router.dart';
import 'package:test_project/core/network/network_error.dart';
import 'package:test_project/domain/services/auth_service.dart';
import 'package:test_project/domain/services/navigation_service.dart';

class OtpViewModel extends BaseViewModel {
  final AuthService _authService = getIt();

  final TextEditingController pinController = TextEditingController();

  void onSubmitOtp() async {
    setBusy(true);
    try {
      await _authService.sendOtp(pinController.text);
      setBusy(false);
      NavigationService.newRootScreen(Routes.homeScreen);
    } catch (e) {
      setBusy(false);
      if (e is ServerException) {
        NavigationService.showErrorToast(e.message);
      } else {
        NavigationService.showErrorToast("Error!");
      }
    }
  }

  void onResendCode() async {
    setBusy(true);
    try {
      await _authService.resendCode();
      setBusy(false);
    } catch (e) {
      setBusy(false);
      if (e is ServerException) {
        NavigationService.showErrorToast(e.message);
      } else {
        NavigationService.showErrorToast("Error!");
      }
    }
  }
}
