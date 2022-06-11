import 'package:test_project/app/app.locator.dart';
import 'package:test_project/core/user_status.dart';
import 'package:test_project/domain/repository/auth_repository.dart';

class AuthService {
  final AuthRepository _authRepository = getIt<AuthRepositoryImpl>();

  String? phone;
  String? requestId;

  Future<UserStatus> getUserStatus() async {
    final token = await _authRepository.getToken();
    if (token == null) {
      return UserStatus.notSigned;
    }
    return UserStatus.signed;
  }

  Future<void> sendPhone(String phone) async {
    try {
      final res = await _authRepository.sendPhone(phone: phone);
      requestId = res.data.requestId;
      this.phone = phone;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sendOtp(String code) async {
    try {
      final res = await _authRepository.sendOtp(
          phone: phone!, code: code, requestId: requestId!);
      _authRepository.setToken(res.data.accessToken);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> resendCode() async {
    try {
      final res = await _authRepository.sendPhone(phone: phone!);
      requestId = res.data.requestId;
    } catch (e) {
      rethrow;
    }
  }
}
