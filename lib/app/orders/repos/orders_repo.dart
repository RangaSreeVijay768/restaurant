import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/orders/repos/models/complete_order_payment/complete_order_payment_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/complete_order_payment/complete_order_payment_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order/create_order_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/create_order_item/create_order_item_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_all_orders/get_all_orders_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_infos_by_restaurant_outlet/get_order_infos_by_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_order_items_group_by_menu_items_and_item_quantities/get_order_items_group_by_menu_items_and_item_quantities_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_orders_count_between/get_orders_count_between_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_sum_of_amount_of_all_orders_between/get_sum_of_amount_of_all_orders_between_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_date/get_total_orders_amount_group_by_date_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/get_total_orders_amount_group_by_payment_gateway/get_total_orders_amount_group_by_payment_gateway_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/orders_add_order_items/orders_add_order_items_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/start_order_payment/start_order_payment_response.dart';
import 'package:restaurant_pos/app/orders/repos/models/update_order/update_order_request.dart';
import 'package:restaurant_pos/app/orders/repos/models/update_order_item/update_order_item_request.dart';
import 'package:retrofit/http.dart';

import '../../core/network/dio_client.dart';
import '../../environment/env_config.dart';
import 'models/get_all_orders/get_all_orders_request.dart';
import 'models/get_orders_count_between/get_orders_count_between_request.dart';

part 'orders_repo.g.dart';

@RestApi()
abstract class OrdersRestClient {
  factory OrdersRestClient(Dio dio, {String baseUrl}) = _OrdersRestClient;

  @GET("/orders/orders/all")
  Future<List<GetAllOrdersResponse>> getAllOrders(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/orders/orderinfos/restaurantoutlet")
  Future<List<GetOrderInfosByRestaurantOutletResponse>>
      getOrderInfosByRestaurantOutlet(@Queries() Map<String, dynamic> queryMap);

  @GET("/orders/orders/count/between")
  Future<int> getOrdersCountBetween(
      @Body() GetOrdersCountBetweenRequest request);

  @GET("/orders/orders/totalamount/between")
  Future<double> getSumOfAmountOfAllOrdersBetween(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/orders/orders/totalamount/paymentgateway")
  Future<List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>>
      getTotalOrdersAmountGroupByPaymentGateway(
          @Queries() Map<String, dynamic> queryMap);

  @GET("/orders/orders/totalamount/date")
  Future<List<GetTotalOrdersAmountGroupByDateResponse>>
      getTotalOrdersAmountGroupByDate(@Queries() Map<String, dynamic> queryMap);

  @GET("/orders/orders/menuitemsandquantities")
  Future<List<GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse>>
  getOrderItemsGroupByMenuItemsAndItemQuantities(@Queries() Map<String, dynamic> queryMap);

  @POST("/orders/secured/orders")
  Future<String> createOrder(@Body() CreateOrderRequest request);

  @POST("/orders/secured/orderitems")
  Future<String> createOrderItem(@Body() CreateOrderItemRequest request);

  @POST("/orders/secured/orderitems/addorderitems")
  Future<String> addOrderItems(@Body() OrdersAddOrderItemsRequest request);

  @POST("/orders/secured/orderpayment/start")
  Future<StartOrderPaymentResponse> startOrderPayment(
      @Body() StartOrderPaymentRequest request);

  @POST("/orders/secured/orderpayment/complete")
  Future<CompleteOrderPaymentResponse> completeOrderPayment(
      @Body() CompleteOrderPaymentRequest request);

  @PUT("/orders/secured/orders/{orderId}")
  Future<void> updateOrder(
      @Body() UpdateOrderRequest request, @Path("orderId") String orderId);

  @PUT("/orders/secured/orderitems/{orderItemId}")
  Future<void> updateOrderItem(@Body() UpdateOrderItemRequest request,
      @Path("orderItemId") String orderItemId);
}

@singleton
class OrdersRepo extends RestService {
  late OrdersRestClient ordersRestClient;

  OrdersRepo() : super() {
    this.ordersRestClient = OrdersRestClient(getDioClient(),
        baseUrl: EnvConfig.getAppEnvironment().apiUrl!);
  }

  Future<List<GetAllOrdersResponse>> getAllOrders(
      GetAllOrdersRequest getAllOrdersRequest) {
    return ordersRestClient.getAllOrders(getAllOrdersRequest.toJson());
  }

  Future<List<GetOrderInfosByRestaurantOutletResponse>>
      getOrderInfosByRestaurantOutlet(
          GetOrderInfosByRestaurantOutletRequest request) {
    return ordersRestClient.getOrderInfosByRestaurantOutlet(request.toJson());
  }

  Future<int> getOrdersCountBetween(GetOrdersCountBetweenRequest request) {
    return ordersRestClient.getOrdersCountBetween(request);
  }

  Future<double> getSumOfAmountOfAllOrdersBetween(
      GetSumOfAmountOfAllOrdersBetweenRequest request) {
    return ordersRestClient.getSumOfAmountOfAllOrdersBetween(request.toJson());
  }

  Future<List<GetTotalOrdersAmountGroupByPaymentGatewayResponse>>
      getTotalOrdersAmountGroupByPaymentGateway(
          GetTotalOrdersAmountGroupByPaymentGatewayRequest request) {
    return ordersRestClient
        .getTotalOrdersAmountGroupByPaymentGateway(request.toJson());
  }

  Future<List<GetTotalOrdersAmountGroupByDateResponse>>
      getTotalOrdersAmountGroupByDate(
          GetTotalOrdersAmountGroupByDateRequest request) {
    return ordersRestClient.getTotalOrdersAmountGroupByDate(request.toJson());
  }

  Future<List<GetOrderItemsGroupByMenuItemsAndItemQuantitiesResponse>>
  getOrderItemsGroupByMenuItemsAndItemQuantities(
      GetOrderItemsGroupByMenuItemsAndItemQuantitiesRequest request) {
    return ordersRestClient.getOrderItemsGroupByMenuItemsAndItemQuantities(request.toJson());
  }

  Future<String> createOrder(CreateOrderRequest request) {
    return ordersRestClient.createOrder(request);
  }

  Future<String> createOrderItem(CreateOrderItemRequest request) {
    return ordersRestClient.createOrderItem(request);
  }

  Future<String> addOrderItems(OrdersAddOrderItemsRequest request) {
    return ordersRestClient.addOrderItems(request);
  }

  Future<StartOrderPaymentResponse> startOrderPayment(
      StartOrderPaymentRequest request) {
    return ordersRestClient.startOrderPayment(request);
  }

  Future<CompleteOrderPaymentResponse> completeOrderPayment(
      CompleteOrderPaymentRequest request) {
    return ordersRestClient.completeOrderPayment(request);
  }

  Future<void> updateOrder(UpdateOrderRequest request) {
    return ordersRestClient.updateOrder(request, request.orderId!);
  }

  Future<void> updateOrderItem(UpdateOrderItemRequest request) {
    return ordersRestClient.updateOrderItem(request, request.orderItemId!);
  }
}
