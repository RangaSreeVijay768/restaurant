import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'orders_get_sum_of_amount_of_all_orders_between_state.dart';

part 'orders_get_sum_of_amount_of_all_orders_between_cubit.freezed.dart';

class OrdersGetSumOfAmountOfAllOrdersBetweenCubit
    extends BaseCubit<OrdersGetSumOfAmountOfAllOrdersBetweenState> {
  late OrdersService ordersService;

  OrdersGetSumOfAmountOfAllOrdersBetweenCubit(
      {required super.context, DateTime? startTime, DateTime? endTime})
      : super(
            initialState: OrdersGetSumOfAmountOfAllOrdersBetweenState.initial(
                startTime: startTime, endTime: endTime)) {
    ordersService = GetIt.instance<OrdersService>();
    getSumOfAmountOfAllOrdersBetween(createRequestData());
  }

  GetSumOfAmountOfAllOrdersBetweenRequest createRequestData(
      {DateTime? startTime, DateTime? endTime}) {
    final request = GetSumOfAmountOfAllOrdersBetweenRequest(
        startTime: startTime, endTime: endTime);
    return request;
  }

  Future<double>
      getSumOfAmountOfAllOrdersBetween(
          GetSumOfAmountOfAllOrdersBetweenRequest request) async {
    return ordersService
        .getSumOfAmountOfAllOrdersBetween(request)
        .then((value) {
      emit(state.copyWith(
          getSumOfAmountOfAllOrdersBetweenResponse: value,
          getSumOfAmountOfAllOrdersBetweenStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getSumOfAmountOfAllOrdersBetweenStatus: BooleanStatus.error));
      throw error;
    });
  }
}
