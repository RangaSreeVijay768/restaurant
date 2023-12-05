import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_restaurant_modal/restaurant_outlets_add_restaurant_modal_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_no_restaurants_widget_state.dart';

part 'restaurant_outlets_no_restaurants_widget_cubit.freezed.dart';

class RestaurantOutletsNoRestaurantsWidgetCubit
    extends BaseCubit<RestaurantOutletsNoRestaurantsWidgetState> {
  RestaurantOutletsNoRestaurantsWidgetCubit({required super.context}) : super(
      initialState: RestaurantOutletsNoRestaurantsWidgetState.initial());
}
