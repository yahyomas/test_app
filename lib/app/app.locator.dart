// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:http/http.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../data/datasources/local/local_storage.dart';
import '../data/datasources/remote/auth_api.dart';
import '../data/datasources/remote/partners_api.dart';
import '../domain/repository/auth_repository.dart';
import '../domain/repository/partner_repository.dart';
import '../domain/services/auth_service.dart';
import '../domain/services/partners_service.dart';

final getIt = StackedLocator.instance;

void setUpLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  getIt.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  getIt.registerSingleton(Client());
  getIt.registerSingleton(AppStorageImpl());
  getIt.registerLazySingleton(() => AuthRemoteDataSourceImpl());
  getIt.registerLazySingleton(() => PartnersRemoteDataSourceImpl());
  getIt.registerLazySingleton(() => AuthRepositoryImpl());
  getIt.registerLazySingleton(() => PartnerRepositoryImpl());
  getIt.registerLazySingleton(() => AuthService());
  getIt.registerLazySingleton(() => PartnersService());
}
