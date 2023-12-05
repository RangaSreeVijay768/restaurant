import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet/get_restaurant_outlet_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_info/get_restaurant_outlet_info_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_request.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/get_restaurant_outlet_infos_by_user_account/get_restaurant_outlet_infos_by_user_account_response.dart';
import 'package:restaurant_pos/app/restaurant_outlets/repos/models/update_restaurant_outlet/update_restaurant_outlet_request.dart';

import '../../orders/repos/models/create_order_item/create_order_item_request.dart';
import '../repos/models/create_restaurant_outlet/create_restaurant_outlet_request.dart';
import '../repos/models/get_all_restaurant_outlets/get_all_restaurant_outlets_request.dart';
import '../repos/models/get_all_restaurant_outlets/get_all_restaurant_outlets_response.dart';
import '../repos/restaurant_repo.dart';

@singleton
class RestaurantService {
  late RestaurantRepo restaurantRepo;

  RestaurantService() {
    this.restaurantRepo = GetIt.instance<RestaurantRepo>();
  }

  Future<List<GetAllRestaurantOutletsResponse>> getAllRestaurantOutlets(
      GetAllRestaurantOutletsRequest getAllRestaurantOutletsRequest) {
    return restaurantRepo
        .getAllRestaurantOutlets(getAllRestaurantOutletsRequest);
  }

  Future<String> createRestaurantOutlet(
      CreateRestaurantOutletRequest createRestaurantOutletRequest) {
    return restaurantRepo.createRestaurantOutlet(createRestaurantOutletRequest);
  }

  Future<GetRestaurantOutletResponse> getRestaurantOutlet(
      GetRestaurantOutletRequest request) {
    return restaurantRepo.getRestaurantOutlet(request);
  }

  Future<List<GetRestaurantOutletInfosByUserAccountResponse>>
      getRestaurantOutletInfosByUserAccount(
          GetRestaurantOutletInfosByUserAccountRequest request) {
    return restaurantRepo.getRestaurantOutletInfosByUserAccount(request);
  }

  Future<GetRestaurantOutletInfoResponse> getRestaurantOutletInfo(
      GetRestaurantOutletInfoRequest request) {
    return restaurantRepo.getRestaurantOutletInfo(request);
  }

  Future<String> createOrderItem(
      CreateOrderItemRequest createOrderItemRequest) {
    return restaurantRepo.createOrderItem(createOrderItemRequest);
  }

    Future<void> updateRestaurantOutlet(UpdateRestaurantOutletRequest request){
      return restaurantRepo
            .updateRestaurantOutlet(request);}

}
