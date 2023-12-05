import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order/create_order_request.dart';
import 'package:restaurant_pos/app/orders/services/orders_service.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_create_order_cubit.freezed.dart';
part 'orders_create_order_state.dart';

class OrdersCreateOrderCubit extends BaseCubit<OrdersCreateOrderState> {
  OrdersCreateOrderCubit(
      {required RestaurantOutlet restaurantOutlet, required super.context})
      : super(
            initialState: OrdersCreateOrderState.initial(
                createOrderStatus: BooleanStatus.initial,
                restaurantOutlet: restaurantOutlet)){
    ordersService = GetIt.instance<OrdersService>();
  }

  late OrdersService ordersService;

  CreateOrderRequest createRequestData({String? restaurantOutletId}) {
    final request = CreateOrderRequest(
        restaurantOutletId:
            restaurantOutletId ?? state.restaurantOutlet.restaurantOutletId!);
    return request;
  }

  Future<String> createOrder(CreateOrderRequest request) async {
    return ordersService.createOrder(request).then((value) {
      emit(state.copyWith(
          orderId: value, createOrderStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(createOrderStatus: BooleanStatus.error));
      throw error;
    });
  }
}
