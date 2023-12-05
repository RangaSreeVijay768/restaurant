import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_orders_add_item_screen_state.dart';

part 'restaurant_outlets_orders_add_item_screen_cubit.freezed.dart';

class RestaurantOutletsOrdersAddItemScreenCubit
    extends BaseCubit<RestaurantOutletsOrdersAddItemScreenState> {
  RestaurantOutletsOrdersAddItemScreenCubit({required super.context}) : super(
      initialState: RestaurantOutletsOrdersAddItemScreenState.initial());
}
