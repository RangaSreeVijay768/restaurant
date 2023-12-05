import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_disable_menu_item/restaurant_outlets_disable_menu_item_cubit.dart';
import '../restaurant_outlets_update_menu_item_modal/restaurant_outlets_update_menu_item_modal_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_menu_popup_menu_button_state.dart';

part 'restaurant_outlets_menu_popup_menu_button_cubit.freezed.dart';

class RestaurantOutletsMenuPopupMenuButtonCubit
    extends BaseCubit<RestaurantOutletsMenuPopupMenuButtonState> {
  RestaurantOutletsMenuPopupMenuButtonCubit({required super.context}) : super(
      initialState: RestaurantOutletsMenuPopupMenuButtonState.initial());
}
