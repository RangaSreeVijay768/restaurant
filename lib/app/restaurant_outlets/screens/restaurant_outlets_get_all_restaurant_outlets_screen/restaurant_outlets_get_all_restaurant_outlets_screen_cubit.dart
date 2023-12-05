import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_get_all_restaurant_outlets_screen_state.dart';

part 'restaurant_outlets_get_all_restaurant_outlets_screen_cubit.freezed.dart';

class RestaurantOutletsGetAllRestaurantOutletsScreenCubit
    extends BaseCubit<RestaurantOutletsGetAllRestaurantOutletsScreenState> {
  RestaurantOutletsGetAllRestaurantOutletsScreenCubit({required super.context})
      : super(initialState: RestaurantOutletsGetAllRestaurantOutletsScreenState
      .initial());
}
