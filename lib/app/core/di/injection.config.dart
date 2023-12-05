// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:restaurant_pos/app/bluetooth/services/bluetooth_service.dart'
    as _i3;
import 'package:restaurant_pos/app/core/analytics/firebase_analytics_service.dart'
    as _i6;
import 'package:restaurant_pos/app/core/network/dio_client.dart' as _i4;
import 'package:restaurant_pos/app/core/services/vibrations_service.dart'
    as _i18;
import 'package:restaurant_pos/app/environment/env_config.dart' as _i5;
import 'package:restaurant_pos/app/menu/repo/menu_repo.dart' as _i7;
import 'package:restaurant_pos/app/menu/services/menu_service.dart' as _i8;
import 'package:restaurant_pos/app/orders/repos/orders_repo.dart' as _i10;
import 'package:restaurant_pos/app/orders/services/orders_service.dart' as _i11;
import 'package:restaurant_pos/app/orders/utils/order_utils.dart' as _i9;
import 'package:restaurant_pos/app/restaurant_outlets/repos/restaurant_repo.dart'
    as _i12;
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart'
    as _i13;
import 'package:restaurant_pos/app/upload_file/repos/upload_file_repo.dart'
    as _i14;
import 'package:restaurant_pos/app/upload_file/services/upload_file_service.dart'
    as _i15;
import 'package:restaurant_pos/app/user_accounts/repos/user_accounts_repo.dart'
    as _i16;
import 'package:restaurant_pos/app/user_accounts/services/user_accounts_service.dart'
    as _i17;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.BluetoothService>(_i3.BluetoothService());
    gh.singleton<_i4.DioClient>(_i4.DioClient());
    await gh.singletonAsync<_i5.EnvConfig>(
      () => _i5.EnvConfig.forEnvironment(),
      preResolve: true,
    );
    gh.singleton<_i6.FirebaseAnalyticsService>(_i6.FirebaseAnalyticsService());
    gh.singleton<_i7.MenuRepo>(_i7.MenuRepo());
    gh.singleton<_i8.MenuService>(_i8.MenuService());
    gh.singleton<_i9.OrderUtils>(_i9.OrderUtils());
    gh.singleton<_i10.OrdersRepo>(_i10.OrdersRepo());
    gh.singleton<_i11.OrdersService>(_i11.OrdersService());
    gh.singleton<_i12.RestaurantRepo>(_i12.RestaurantRepo());
    gh.singleton<_i13.RestaurantService>(_i13.RestaurantService());
    gh.singleton<_i14.UploadFileRepo>(_i14.UploadFileRepo());
    gh.singleton<_i15.UploadFileService>(_i15.UploadFileService());
    gh.singleton<_i16.UserAccountsRepo>(_i16.UserAccountsRepo());
    gh.singleton<_i17.UserAccountsService>(_i17.UserAccountsService());
    gh.singleton<_i18.VibrationsService>(_i18.VibrationsService());
    return this;
  }
}
