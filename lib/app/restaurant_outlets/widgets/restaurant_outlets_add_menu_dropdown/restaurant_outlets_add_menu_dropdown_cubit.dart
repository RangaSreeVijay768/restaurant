import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/create_restaurant_outlet/create_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/create_restaurant_outlet/create_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/services/restaurant_service.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_add_menu_dropdown_state.dart';

part 'restaurant_outlets_add_menu_dropdown_cubit.freezed.dart';

class RestaurantOutletsAddMenuDropdownCubit
    extends BaseCubit<RestaurantOutletsAddMenuDropdownState> {
  RestaurantOutletsAddMenuDropdownCubit({required super.context})
      : super(initialState: RestaurantOutletsAddMenuDropdownState.initial());

  late RestaurantService restaurantService;


}
