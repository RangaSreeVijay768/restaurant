import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/menu/repo/models/create_menu_item/create_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/disable_menu_item/disable_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_all_categories/get_all_categories_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_all_categories/get_all_categories_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_item/get_menu_item_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/get_menu_items_by_menu/get_menu_items_by_menu_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/menu_get_all_menu_items/menu_get_all_menu_items_request.dart';
import 'package:restaurant_pos/app/menu/repo/models/menu_get_all_menu_items/menu_get_all_menu_items_response.dart';
import 'package:restaurant_pos/app/menu/repo/models/update_menu_item/update_menu_item_request.dart';
import 'package:retrofit/http.dart';

import '../../core/network/dio_client.dart';
import '../../environment/env_config.dart';

part 'menu_repo.g.dart';

@RestApi()
abstract class MenuRestClient {
  factory MenuRestClient(Dio dio, {String baseUrl}) = _MenuRestClient;

  @GET("/menus/menuitems/all")
  Future<List<MenuGetAllMenuItemsResponse>> menuGetAllMenuItems(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/menus/categories/all")
  Future<List<GetAllCategoriesResponse>> getAllCategories(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/menus/menuitems/menu")
  Future<List<GetMenuItemsByMenuResponse>> getMenuItemsByMenu(
      @Queries() Map<String, dynamic> queryMap);

  @GET("/menus/menuitems/{menuItemId}")
  Future<GetMenuItemResponse> getMenuItem(@Body() GetMenuItemRequest request,
      @Path('menuItemId') String menuItemId);

  @POST("/menus/secured/menuitems")
  Future<String> createMenuItem(@Body() CreateMenuItemRequest request);

  @PUT("/menus/secured/menuitems/{menuItemId}")
  Future<void> updateMenuItem(@Body() UpdateMenuItemRequest request,
      @Path("menuItemId") String menuItemId);

  @PUT("/menus/secured/menuitems/disable/{menuItemId}")
  Future<void> disableMenuItem(@Body() DisableMenuItemRequest request,
      @Path("menuItemId") String menuItemId);
}

@singleton
class MenuRepo extends RestService {
  late MenuRestClient menuRestClient;

  MenuRepo() : super() {
    this.menuRestClient = MenuRestClient(getDioClient(),
        baseUrl: EnvConfig.getAppEnvironment().apiUrl);
  }

  Future<List<MenuGetAllMenuItemsResponse>> menuGetAllMenuItems(
      MenuGetAllMenuItemsRequest menuGetAllMenuItemsRequest) {
    return menuRestClient
        .menuGetAllMenuItems(menuGetAllMenuItemsRequest.toJson());
  }

  Future<List<GetAllCategoriesResponse>> getAllCategories(
      GetAllCategoriesRequest getAllCategoriesRequest) {
    return menuRestClient.getAllCategories(getAllCategoriesRequest.toJson());
  }

  Future<List<GetMenuItemsByMenuResponse>> getMenuItemsByMenu(
      GetMenuItemsByMenuRequest request) {
    logger.d(request.toJson());
    return menuRestClient.getMenuItemsByMenu(request.toJson());
  }

  Future<GetMenuItemResponse> getMenuItem(GetMenuItemRequest request) {
    return menuRestClient.getMenuItem(request, request.menuItemId!);
  }

  Future<String> createMenuItem(CreateMenuItemRequest request) {
    return menuRestClient.createMenuItem(request);
  }

  Future<void> updateMenuItem(UpdateMenuItemRequest request) {
    return menuRestClient.updateMenuItem(request, request.menuItemId!);
  }

  Future<void> disableMenuItem(DisableMenuItemRequest request) {
    return menuRestClient.disableMenuItem(request, request.menuItemId!);
  }
}
