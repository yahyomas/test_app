import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:stacked/stacked.dart';
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/app/app.router.dart';
import 'package:test_project/core/network/network_error.dart';
import 'package:test_project/domain/services/auth_service.dart';
import 'package:test_project/domain/services/navigation_service.dart';

class SignInViewModel extends BaseViewModel {
  final AuthService _authService = getIt();

  TextEditingController controller = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
      mask: '### ## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  void onSubmit() async {
    try {
      setBusy(true);
      await _authService.sendPhone(controller.text.replaceAll(' ', ''));
      setBusy(false);
      NavigationService.pushNamed(routeName: Routes.otpScreen);
    } catch (e) {
      setBusy(false);
      if (e is ServerException) {
        NavigationService.showErrorToast(e.message);
      }
    }
  }
}
