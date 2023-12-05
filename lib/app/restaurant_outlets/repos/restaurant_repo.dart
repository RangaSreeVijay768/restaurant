import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/network/dio_client.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_all_restaurant_outlets/get_all_restaurant_outlets_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/update_restaurant_outlet/update_restaurant_outlet_request.dart';
import 'package:retrofit/http.dart';

import '../../environment/env_config.dart';
import '../../orders/repos/models/create_order_item/create_order_item_request.dart';
import 'models/create_restaurant_outlet/create_restaurant_outlet_request.dart';
import 'models/get_all_restaurant_outlets/get_all_restaurant_outlets_response.dart';

part 'restaurant_repo.g.dart';

@RestApi()
abstract class RestaurantRestClient {
  factory RestaurantRestClient(Dio dio, {String baseUrl}) =
      _RestaurantRestClient;

  @GET("/restaurants/restaurantoutlets/all")
  Future<List<GetAllRestaurantOutletsResponse>> getAllRestaurantOutlets(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/restaurants/restaurantoutlets/{restaurantOutletId}")
  Future<GetRestaurantOutletResponse> getRestaurantOutlet(
      @Path('restaurantOutletId') String restaurantOutletId);

  @POST("/restaurants/secured/restaurantoutlets")
  Future<String> createRestaurantOutlet(
      @Body() CreateRestaurantOutletRequest createRestaurantOutletRequest);

  @POST("/orders/secured/orderitems")
  Future<String> createOrderItem(
      @Body() CreateOrderItemRequest createOrderItemRequest);

  @GET("/restaurants/secured/restaurantoutletinfos/useraccount")
  Future<List<GetRestaurantOutletInfosByUserAccountResponse>>
      getRestaurantOutletInfosByUserAccount(
          @Queries() Map<String, dynamic> queryMap);

  @GET("/restaurants/restaurantoutletinfo/{restaurantOutletId}")
  Future<GetRestaurantOutletInfoResponse> getRestaurantOutletInfo(
      @Path('restaurantOutletId') String restaurantOutletId);

  @PUT("/restaurants/secured/restaurantoutlets/{restaurantOutletId}")
  Future<void> updateRestaurantOutlet(
      @Body() UpdateRestaurantOutletRequest request, @Path("restaurantOutletId") String restaurantOutletId);

}

@singleton
class RestaurantRepo extends RestService {
  late RestaurantRestClient restaurantRestClient;

  RestaurantRepo() : super() {
    this.restaurantRestClient = RestaurantRestClient(getDioClient(),
        baseUrl: EnvConfig.getAppEnvironment().apiUrl!);
  }

  Future<List<GetAllRestaurantOutletsResponse>> getAllRestaurantOutlets(
      GetAllRestaurantOutletsRequest getAllRestaurantOutletsRequest) {
    return restaurantRestClient
        .getAllRestaurantOutlets(getAllRestaurantOutletsRequest.toJson());
  }

  Future<String> createRestaurantOutlet(
      CreateRestaurantOutletRequest createRestaurantOutletRequest) {
    return restaurantRestClient
        .createRestaurantOutlet(createRestaurantOutletRequest);
  }

  Future<String> createOrderItem(
      CreateOrderItemRequest createOrderItemRequest) {
    return restaurantRestClient.createOrderItem(createOrderItemRequest);
  }

  Future<GetRestaurantOutletResponse> getRestaurantOutlet(
      GetRestaurantOutletRequest request) {
    return restaurantRestClient.getRestaurantOutlet(request.restaurantOutletId);
  }

  Future<List<GetRestaurantOutletInfosByUserAccountResponse>>
      getRestaurantOutletInfosByUserAccount(
          GetRestaurantOutletInfosByUserAccountRequest request) {
    return restaurantRestClient
        .getRestaurantOutletInfosByUserAccount(request.toJson());
  }

  Future<GetRestaurantOutletInfoResponse> getRestaurantOutletInfo(
      GetRestaurantOutletInfoRequest request) {
    return restaurantRestClient
        .getRestaurantOutletInfo(request.restaurantOutletId!);
  }

  Future<void> updateRestaurantOutlet(UpdateRestaurantOutletRequest request) {
    return restaurantRestClient.updateRestaurantOutlet(request, request.restaurantOutletId!);
  }

}
