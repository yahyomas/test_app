import 'package:test_project/app/app.locator.dart';
import 'package:test_project/data/datasources/remote/partners_api.dart';
import 'package:test_project/data/models/partners/partners_response.dart';

abstract class PartnerRepository {
  Future<PartnersResponse> fetchPartners(String token);
}

class PartnerRepositoryImpl implements PartnerRepository {
  final PartnersRemoteDataSource _partnersRemoteDataSource =
      getIt<PartnersRemoteDataSourceImpl>();

  @override
  Future<PartnersResponse> fetchPartners(String token) async {
    return await _partnersRemoteDataSource.fetchPartners(token: token);
  }
}
