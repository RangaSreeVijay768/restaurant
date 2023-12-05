import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_cubit.dart';

part 'restaurant_outlets_create_order_item_modal_state.dart';

part 'restaurant_outlets_create_order_item_modal_cubit.freezed.dart';

class RestaurantOutletsCreateOrderItemModalCubit
    extends BaseModalCubit<RestaurantOutletsCreateOrderItemModalState> {
  RestaurantOutletsCreateOrderItemModalCubit({required super.context}) : super(
      initialState: RestaurantOutletsCreateOrderItemModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
