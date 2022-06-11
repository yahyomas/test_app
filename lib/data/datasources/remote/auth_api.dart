import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/core/network/network_constants.dart';
import 'package:test_project/core/network/network_error.dart';
import 'package:test_project/data/models/auth/otp_response.dart';
import 'package:test_project/data/models/auth/phone_response.dart';

abstract class AuthRemoteDataSource {
  Future<PhoneResponse> sendPhone({required String phone});

  Future<OtpResponse> sendOtp(
      {required String phone,
      required String requestId,
      required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client = getIt();

  @override
  Future<PhoneResponse> sendPhone({required String phone}) async {
    final data = {'login': phone};
    var url = Uri.parse(authBaseUrl + Endpoints.signInRequest);
    final response = await client.post(url,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    final json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return PhoneResponse.fromJson(json);
    } else {
      throw ServerException(
          code: response.statusCode, message: json['message']);
    }
  }

  @override
  Future<OtpResponse> sendOtp(
      {required String phone,
      required String requestId,
      required String password}) async {
    final data = {'login': phone, 'requestId': requestId, 'password': password};
    var url = Uri.parse(authBaseUrl + Endpoints.signIn);
    final response = await client.post(url,
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});
    final json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return OtpResponse.fromJson(json);
    } else {
      throw ServerException(
          code: response.statusCode, message: json['message']);
    }
  }
}
