import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_complete_order_payment/orders_complete_order_payment_cubit.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_start_order_payment/orders_start_order_payment_cubit.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_select_payment_type_modal_content_state.dart';

part 'restaurant_outlets_select_payment_type_modal_content_cubit.freezed.dart';

class RestaurantOutletsSelectPaymentTypeModalContentCubit
    extends BaseCubit<RestaurantOutletsSelectPaymentTypeModalContentState> {
  RestaurantOutletsSelectPaymentTypeModalContentCubit(
      {required super.context, required Order order})
      : super(
            initialState:
                RestaurantOutletsSelectPaymentTypeModalContentState
                    .initial(selectedPaymentType: 'CASH', order: order));

  selectPaymentType(String value) {
    emit(state.copyWith(selectedPaymentType: value));
  }
}
