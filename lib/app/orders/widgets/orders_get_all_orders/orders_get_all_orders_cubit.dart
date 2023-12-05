import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_all_orders/get_all_orders_request.dart';
import '../../../core/database/boolean_status.dart';
import '../../repos/models/get_all_orders/get_all_orders_response.dart';
import '../../services/orders_service.dart';
import '/app/core/blocs/base_cubit.dart';

part 'orders_get_all_orders_state.dart';

part 'orders_get_all_orders_cubit.freezed.dart';

class OrdersGetAllOrdersCubit extends BaseCubit<OrdersGetAllOrdersState> {
  late OrdersService ordersService;

  OrdersGetAllOrdersCubit({required super.context})
      : super(initialState: OrdersGetAllOrdersState.initial(
    getAllOrdersStatus: BooleanStatus.initial)){
    this.ordersService = GetIt.instance<OrdersService>();
    getAllOrdersResponse(createRequestData());
  }

  GetAllOrdersRequest createRequestData(){
    return GetAllOrdersRequest();
  }

  Future<List<GetAllOrdersResponse>> getAllOrdersResponse(
      GetAllOrdersRequest request) {
    return ordersService.getAllOrders(request).then((value) {
      emit(state.copyWith(
          getAllOrdersResponse: value,
          getAllOrdersStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getAllOrdersStatus: BooleanStatus.error));
      logger.d( error);
      return Future.error(error);
    });
  }

}
