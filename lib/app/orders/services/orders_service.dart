import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/orders/repos/models/complete_order_payment/complete_order_payment_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/complete_order_payment/complete_order_payment_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order/create_order_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order_item/create_order_item_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_all_orders/get_all_orders_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_all_orders/get_all_orders_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_orders_count_between/get_orders_count_between_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_orders_count_between/get_orders_count_between_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/orders_add_order_items/orders_add_order_items_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/update_order/update_order_request.dart';
import 'package:restaurant_pos/app/orders/repos/orders_repo.dart';

import '../repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_response.dart';
import '../repos/models/update_order_item/update_order_item_request.dart';

@singleton
class OrdersService {
  late OrdersRepo ordersRepo;

  OrdersService() {
    this.ordersRepo = GetIt.instance<OrdersRepo>();
  }

  Future<List<GetAllOrdersResponse>> getAllOrders(
      GetAllOrdersRequest getAllOrdersRequest) {
    return ordersRepo.getAllOrders(getAllOrdersRequest);
  }

  Future<List<GetOrderInfosByRestaurantOutletResponse>>
      getOrderInfosByRestaurantOutlet(
          GetOrderInfosByRestaurantOutletRequest request) {
    return ordersRepo.getOrderInfosByRestaurantOutlet(request);
  }

  Future<int>
  getOrdersCountBetween(
      GetOrdersCountBetweenRequest request) {
    return ordersRepo.getOrdersCountBetween(request);
  }

  Future<double>
  getSumOfAmountOfAllOrdersBetween(
      GetSumOfAmountOfAllOrdersBetweenRequest request) {
    return ordersRepo.getSumOfAmountOfAllOrdersBetween(request);
  }

  Future<List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>>
  getTotalOrdersAmountGroupByPaymentGateway(
      GetTotalOrdersAmountGroupByPaymentGatewayRequest request) {
    return ordersRepo.getTotalOrdersAmountGroupByPaymentGateway(request);
  }

  Future<List<GetTotalOrdersAmountGroupByDateResponse>>
  getTotalOrdersAmountGroupByDate(
      GetTotalOrdersAmountGroupByDateRequest request) {
    return ordersRepo.getTotalOrdersAmountGroupByDate(request);
  }

  Future<List<GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse>>
  getOrderItemsGroupByMenuItemsAndItemQuantities(
      GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest request) {
    return ordersRepo.getOrderItemsGroupByMenuItemsAndItemQuantities(request);
  }

  Future<String> createOrder(CreateOrderRequest request) {
    return ordersRepo.createOrder(request);
  }

  Future<String> createOrderItem(CreateOrderItemRequest request) {
    return ordersRepo.createOrderItem(request);
  }

  Future<String> addOrderItems(OrdersAddOrderItemsRequest request) {
    return ordersRepo.addOrderItems(request);
  }

  Future<StartOrderPaymentResponse> startOrderPayment(
      StartOrderPaymentRequest request) {
    return ordersRepo.startOrderPayment(request);
  }

  Future<CompleteOrderPaymentResponse> completeOrderPayment(
      CompleteOrderPaymentRequest request) {
    return ordersRepo.completeOrderPayment(request);
  }

  Future<void> updateOrder(UpdateOrderRequest request) {
    return ordersRepo.updateOrder(request);
  }

  Future<void> updateOrderItem(UpdateOrderItemRequest request) {
    return ordersRepo.updateOrderItem(request);
  }

}
