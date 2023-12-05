part of 'orders_get_all_orders_cubit.dart';

@freezed
class OrdersGetAllOrdersState with _$OrdersGetAllOrdersState {
  const factory OrdersGetAllOrdersState.initial({
  String? status,
  int? first,
  int? count,
  String? columnName,
  String? columnOrder,
  BooleanStatus? getAllOrdersStatus,
  List<GetAllOrdersResponse>? getAllOrdersResponse

}) = _Initial;}

