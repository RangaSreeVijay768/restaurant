import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_pos/app/bluetooth/state/bluetooth_cubit.dart';
import 'package:restaurant_pos/app/bluetooth/widgets/bluetooth_print_print_receipt/bluetooth_print_print_receipt_cubit.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/core/widgets/core_counter_timer/core_counter_timer_cubit.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/orders/services/orders_service.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order/orders_update_order_cubit.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order_item/orders_update_order_item_cubit.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_select_payment_type_modal/restaurant_outlets_select_payment_type_modal_cubit.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_get_order_infos_by_restaurant_outlet_cubit.freezed.dart';
part 'orders_get_order_infos_by_restaurant_outlet_state.dart';

class OrdersGetOrderInfosByRestaurantOutletCubit
    extends BaseCubit<OrdersGetOrderInfosByRestaurantOutletState> {
  OrdersGetOrderInfosByRestaurantOutletCubit(
      {required RestaurantOutlet restaurantOutlet,
      String? status,
      required super.context})
      : super(
            initialState: OrdersGetOrderInfosByRestaurantOutletState.initial(
                restaurantOutlet: restaurantOutlet,
                status: status,
                getOrderInfosByRestaurantOutletStatus: BooleanStatus.initial,
                bluetoothState:
                    BlocProvider.of<BluetoothCubit>(context).state)) {
    ordersService = GetIt.instance<OrdersService>();
    getOrderInfosByRestaurantOutlet(createRequestData());
  }

  late OrdersService ordersService;

  GetOrderInfosByRestaurantOutletRequest createRequestData(
      {String? restaurantOutletId,
      String? status,
      int? first,
      int? count,
      String? columnName,
      String? columnOrder}) {
    final request = GetOrderInfosByRestaurantOutletRequest(
        restaurantOutlet:
            restaurantOutletId ?? state.restaurantOutlet.restaurantOutletId!,
        status: status ?? state.status,
        first: first ?? state.first,
        count: count ?? state.count,
        columnName: columnName ?? state.columnName,
        columnOrder: columnOrder ?? state.columnOrder);
    return request;
  }

  Future<List<GetOrderInfosByRestaurantOutletResponse>>
      getOrderInfosByRestaurantOutlet(
          GetOrderInfosByRestaurantOutletRequest request) async {
    logger.d(request);
    return ordersService.getOrderInfosByRestaurantOutlet(request).then((value) {
      emit(state.copyWith(
          getOrderInfosByRestaurantOutletResponse: value,
          getOrderInfosByRestaurantOutletStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      logger.d(error);
      emit(state.copyWith(
          getOrderInfosByRestaurantOutletStatus: BooleanStatus.error));
      throw error;
    });
  }

  String getCurrentTime() {
    var now = DateTime.now();
    var formatter = DateFormat('HH:mm:ss');
    return formatter.format(now);
  }
}
