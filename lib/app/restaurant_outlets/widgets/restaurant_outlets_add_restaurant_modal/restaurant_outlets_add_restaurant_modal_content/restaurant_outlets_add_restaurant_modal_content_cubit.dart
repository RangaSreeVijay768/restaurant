import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_create_restaurant_outlet/restaurant_outlets_create_restaurant_outlet_cubit.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_add_restaurant_modal_content_state.dart';

part 'restaurant_outlets_add_restaurant_modal_content_cubit.freezed.dart';

class RestaurantOutletsAddRestaurantModalContentCubit
    extends BaseCubit<RestaurantOutletsAddRestaurantModalContentState> {
  RestaurantOutletsAddRestaurantModalContentCubit({required super.context})
      : super(
      initialState: RestaurantOutletsAddRestaurantModalContentState.initial());
}
