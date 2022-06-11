import 'package:stacked/stacked.dart';
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/app/app.router.dart';
import 'package:test_project/core/user_status.dart';
import 'package:test_project/domain/services/auth_service.dart';
import 'package:test_project/domain/services/navigation_service.dart';

class SplashViewModel extends BaseViewModel {
  final AuthService _authService = getIt();

  void onViewModelReady() async {
    final UserStatus userStatus = await _authService.getUserStatus();
    await Future.delayed(const Duration(seconds: 2));
    if (userStatus == UserStatus.signed) {
      NavigationService.pushReplacement(routeName: Routes.homeScreen);
    } else {
      NavigationService.pushReplacement(routeName: Routes.signInScreen);
    }
  }
}
