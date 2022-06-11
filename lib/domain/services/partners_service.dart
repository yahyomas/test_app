import 'package:test_project/app/app.locator.dart';
import 'package:test_project/data/models/partners/partners_response.dart';
import 'package:test_project/domain/repository/auth_repository.dart';
import 'package:test_project/domain/repository/partner_repository.dart';

class PartnersService {
  final PartnerRepository _partnerRepository = getIt<PartnerRepositoryImpl>();
  final AuthRepository _authRepository = getIt<AuthRepositoryImpl>();

  Future<List<Partner>> fetchPartners() async {
    try {
      final token = await _authRepository.getToken();
      return (await _partnerRepository.fetchPartners(token!)).data.data;
    } catch (e) {
      rethrow;
    }
  }
}
