import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/modals/base_modal/base_modal_cubit.dart';

part 'restaurant_outlets_select_payment_type_modal_cubit.freezed.dart';
part 'restaurant_outlets_select_payment_type_modal_state.dart';

class RestaurantOutletsSelectPaymentTypeModalCubit
    extends BaseModalCubit<RestaurantOutletsSelectPaymentTypeModalState> {
  RestaurantOutletsSelectPaymentTypeModalCubit({required super.context})
      : super(
            initialState:
                RestaurantOutletsSelectPaymentTypeModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
