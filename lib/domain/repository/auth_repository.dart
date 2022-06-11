import 'package:test_project/app/app.locator.dart';
import 'package:test_project/data/datasources/local/local_storage.dart';
import 'package:test_project/data/datasources/remote/auth_api.dart';
import 'package:test_project/data/models/auth/otp_response.dart';
import 'package:test_project/data/models/auth/phone_response.dart';

abstract class AuthRepository {
  Future<PhoneResponse> sendPhone({required String phone});

  Future<OtpResponse> sendOtp(
      {required String phone, required String code, required String requestId});

  Future<String?> getToken();

  Future<void> setToken(String token);
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource =
      getIt<AuthRemoteDataSourceImpl>();
  final AppStorage _appStorage = getIt<AppStorageImpl>();

  @override
  Future<OtpResponse> sendOtp(
      {required String phone,
      required String code,
      required String requestId}) async {
    try {
      return await _authRemoteDataSource.sendOtp(
          phone: phone, password: code, requestId: requestId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PhoneResponse> sendPhone({required String phone}) async {
    try {
      return await _authRemoteDataSource.sendPhone(phone: phone);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setToken(String token) async {
    await _appStorage.setToken(token);
  }

  @override
  Future<String?> getToken() async {
    return await _appStorage.getToken();
  }
}
