import 'package:stacked/stacked.dart';
import 'package:test_project/app/app.locator.dart';
import 'package:test_project/core/network/network_error.dart';
import 'package:test_project/data/models/partners/partners_response.dart';
import 'package:test_project/domain/services/navigation_service.dart';
import 'package:test_project/domain/services/partners_service.dart';

class HomeViewModel extends BaseViewModel {
  final PartnersService _partnersService = getIt();
  List<Partner> _partners = [];
  List<Partner> get partners => _partners;

  onReady() {
    _getData();
  }

  Future<void> _getData() async {
    try {
      setBusy(true);
      _partners = await _partnersService.fetchPartners();
      setBusy(false);
    } catch (e) {
      setBusy(false);
      if (e is ServerException) {
        NavigationService.showErrorToast(e.message);
      } else {
        NavigationService.showErrorToast('Error!');
      }
    }
  }
}
