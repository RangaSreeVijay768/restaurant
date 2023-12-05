import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_add_order_items/orders_add_order_items_cubit.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_create_order/orders_create_order_cubit.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_create_order_item/orders_create_order_item_cubit.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_get_menu_items_by_menu/restaurant_outlets_get_menu_items_by_menu_cubit.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_search_menu_form/restaurant_outlets_search_menu_form_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_create_order_item_modal_content_state.dart';

part 'restaurant_outlets_create_order_item_modal_content_cubit.freezed.dart';

class RestaurantOutletsCreateOrderItemModalContentCubit
    extends BaseCubit<RestaurantOutletsCreateOrderItemModalContentState> {
  RestaurantOutletsCreateOrderItemModalContentCubit({required super.context})
      : super(initialState: RestaurantOutletsCreateOrderItemModalContentState
      .initial());
}
