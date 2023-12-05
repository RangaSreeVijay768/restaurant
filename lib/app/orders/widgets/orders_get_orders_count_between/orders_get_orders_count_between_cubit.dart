import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_orders_count_between/get_orders_count_between_request.dart';
import '../../repos/models/get_orders_count_between/get_orders_count_between_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_get_orders_count_between_state.dart';

part 'orders_get_orders_count_between_cubit.freezed.dart';

class OrdersGetOrdersCountBetweenCubit
    extends BaseCubit<OrdersGetOrdersCountBetweenState> {
  late OrdersService ordersService;

  OrdersGetOrdersCountBetweenCubit(
      {required super.context, DateTime? startTime, DateTime? endTime})
      : super(
            initialState: OrdersGetOrdersCountBetweenState.initial(
                startTime: startTime, endTime: endTime)) {
    ordersService = GetIt.instance<OrdersService>();
    getOrdersCountBetween(createRequestData());
  }

  GetOrdersCountBetweenRequest createRequestData(
      {DateTime? startTime, DateTime? endTime}) {
    final request = GetOrdersCountBetweenRequest(
        startTime: startTime ?? state.startTime,
        endTime: endTime ?? state.endTime);
    return request;
  }

  Future<int> getOrdersCountBetween(
      GetOrdersCountBetweenRequest request) async {
    return ordersService.getOrdersCountBetween(request).then((value) {
      emit(state.copyWith(
          getOrdersCountBetweenResponse: value,
          getOrdersCountBetweenStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getOrdersCountBetweenStatus: BooleanStatus.error));
      throw error;
    });
  }
}
