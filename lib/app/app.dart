import 'package:http/http.dart' as http;
import 'package:stacked/stacked_annotations.dart';
import 'package:test_project/data/datasources/local/local_storage.dart';
import 'package:test_project/data/datasources/remote/auth_api.dart';
import 'package:test_project/data/datasources/remote/partners_api.dart';
import 'package:test_project/domain/repository/auth_repository.dart';
import 'package:test_project/domain/repository/partner_repository.dart';
import 'package:test_project/domain/services/auth_service.dart';
import 'package:test_project/domain/services/partners_service.dart';
import 'package:test_project/presentation/home/home_screen.dart';
import 'package:test_project/presentation/otp/otp_screen.dart';
import 'package:test_project/presentation/signin/signIn_screen.dart';
import 'package:test_project/presentation/splash/splash_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SignInScreen),
    MaterialRoute(page: OtpScreen),
    MaterialRoute(page: HomeScreen),
  ],
  dependencies: [
    Singleton(classType: http.Client),
    Singleton(classType: AppStorageImpl),
    LazySingleton(classType: AuthRemoteDataSourceImpl),
    LazySingleton(classType: PartnersRemoteDataSourceImpl),
    LazySingleton(
      classType: AuthRepositoryImpl,
    ),
    LazySingleton(classType: PartnerRepositoryImpl),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: PartnersService)
  ],
  locatorName: 'getIt',
  locatorSetupName: 'setUpLocator',
)
class App {}
