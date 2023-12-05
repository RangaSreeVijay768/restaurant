import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../screens/restaurant_outlets_main_screen/restaurant_outlets_main_screen.dart';
import '../../screens/restaurant_outlets_main_screen/restaurant_outlets_main_screen_cubit.dart';
import '../restaurant_outlets_get_restaurant_outlet_infos_by_user_account/restaurant_outlets_get_restaurant_outlet_infos_by_user_account_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_side_menu_state.dart';

part 'restaurant_outlets_side_menu_cubit.freezed.dart';

class RestaurantOutletsSideMenuCubit
    extends BaseCubit<RestaurantOutletsSideMenuState> {
  RestaurantOutletsSideMenuCubit({required super.context})
      : super(initialState: RestaurantOutletsSideMenuState.initial());
}
