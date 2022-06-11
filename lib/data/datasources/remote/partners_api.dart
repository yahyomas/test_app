import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/core/network/network_constants.dart';
import 'package:test_project/core/network/network_error.dart';
import 'package:test_project/data/models/partners/partners_response.dart';

abstract class PartnersRemoteDataSource {
  Future<PartnersResponse> fetchPartners({required String token});
}

class PartnersRemoteDataSourceImpl implements PartnersRemoteDataSource {
  final http.Client client = getIt();

  @override
  Future<PartnersResponse> fetchPartners({required String token}) async {
    final header = {'Authorization': 'Bearer $token'};
    var url = Uri.parse(partnersBaseUrl + Endpoints.partners);
    final response = await client.get(url, headers: header);
    final json = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return PartnersResponse.fromJson(json);
    } else {
      if (response.statusCode == 401) {
        throw ServerException(
            code: response.statusCode, message: 'Unauthorized!');
      }
      throw ServerException(
          code: response.statusCode, message: json['message']);
    }
  }
}
